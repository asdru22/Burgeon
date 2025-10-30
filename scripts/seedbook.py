import os
import json
import yaml
from PIL import Image

yaml_input = "scripts/seedbook_entries.yaml"
advancements_dir = r"datapack/data/brg/advancement/seedbook"
function_file = r"datapack/data/brg/function/item/seedbook/load.mcfunction"
textures_dir = r"resourcepack/assets/brg/textures/item"
unknown_dir = r"resourcepack/assets/brg.seedbook"

# === STEP 1: Load YAML ===
with open(yaml_input, "r", encoding="utf-8") as f:
    pairs = yaml.safe_load(f)

if not isinstance(pairs, list):
    raise ValueError("YAML file must contain a list of pairs")

# === STEP 2: Create Advancements ===
os.makedirs(advancements_dir, exist_ok=True)

for a, b in pairs:
    advancement = {
        "parent": "brg:seedbook/root",
        "criteria": {
            "wheat_seeds": {
                "trigger": "minecraft:inventory_changed",
                "conditions": {
                    "items": [
                        {
                            "predicates": {
                                "minecraft:custom_data": f'{{brg:{{id:"{a}"}}}}'
                            }
                        }
                    ]
                }
            }
        }
    }

    path = os.path.join(advancements_dir, f"{a}.json")
    with open(path, "w", encoding="utf-8") as f:
        json.dump(advancement, f, indent=2)
    print(f"Created advancement: {path}")

# === STEP 3: Write Function File ===
os.makedirs(os.path.dirname(function_file), exist_ok=True)

entries = ",".join([f'{{seed:"{a}",result:"{b}"}}' for a, b in pairs])
pointerpod = """{seed:"pointerpod",result:"twining_tendril"}"""
content = f"data modify storage brg:storage root.seedbook set value [{pointerpod},{entries}]"

with open(function_file, "w", encoding="utf-8") as f:
    f.write(content)

print(f"Wrote function file: {function_file}")

# === STEP 4: Process Textures and Models by Source Folder ===
base_textures_dir = r"resourcepack/assets/brg"
unknown_dir = r"resourcepack/assets/brg.seedbook"

textures_out_item_dir = os.path.join(unknown_dir, "textures", "item","unknown")
textures_out_block_dir = os.path.join(unknown_dir, "textures", "block","unknown")
items_out_item_dir = os.path.join(unknown_dir, "items","unknown")
models_out_item_dir = os.path.join(unknown_dir, "models", "item","unknown")
models_out_block_dir = os.path.join(unknown_dir, "models", "block","unknown")

# Make sure all needed directories exist
for d in [
    textures_out_item_dir,
    textures_out_block_dir,
    items_out_item_dir,
    models_out_item_dir,
    models_out_block_dir,
]:
    os.makedirs(d, exist_ok=True)

# Collect all unique item names from both elements of each pair
all_items = {name for pair in pairs for name in pair}

for item_name in all_items:
    # Try locating the source in both item/ and block/
    possible_paths = [
        ("item", os.path.join(base_textures_dir, "textures", "item", f"{item_name}.png")),
        ("block", os.path.join(base_textures_dir, "textures", "block", f"{item_name}.png")),
    ]

    src_type, src_path = None, None
    for typ, path in possible_paths:
        if os.path.exists(path):
            src_type, src_path = typ, path
            break

    if src_path is None:
        print(f"⚠️  Texture not found for '{item_name}' in item/ or block/")
        continue

    # === Texture handling ===
    if src_type == "item":
        dst_path = os.path.join(textures_out_item_dir, f"{item_name}.png")
    else:
        dst_path = os.path.join(textures_out_block_dir, f"{item_name}.png")

    # Make non-transparent pixels black (preserving alpha)
    img = Image.open(src_path).convert("RGBA")
    pixels = img.load()
    if pixels is None:
        raise RuntimeError(f"Failed to load pixels for {src_path}")

    for y in range(img.height):
        for x in range(img.width):
            r, g, b, alpha = pixels[x, y]
            if alpha != 0:
                pixels[x, y] = (0, 0, 0, alpha)

    img.save(dst_path)
    print(f"🖼️  Created darkened texture: {dst_path}")

    # === Model handling ===
    assert src_type in ("item", "block"), f"Unexpected src_type for {item_name}: {src_type}"

    if src_type == "item":
        model_dst = os.path.join(models_out_item_dir, f"{item_name}.json")
        model_data = {
            "parent": "item/generated",
            "textures": {
                "layer0": f"brg.seedbook:item/unknown/{item_name}"
            }
        }
    else:
        model_dst = os.path.join(models_out_block_dir, f"{item_name}.json")
        model_data = {
          "parent": "minecraft:block/cube_all",
          "textures": {
            "all": "brg.seedbook:block/unknown"
          }
        }


    os.makedirs(os.path.dirname(model_dst), exist_ok=True)
    with open(model_dst, "w", encoding="utf-8") as f:
        json.dump(model_data, f, indent=2)

    print(f"📦 Created generated model: {model_dst}")

    # === Item JSON (points to the model) ===
    if src_type == "item":
        item_json_path = os.path.join(items_out_item_dir, f"{item_name}.json")
        model_ref = f"brg.seedbook:item/unknown/{item_name}"
    else:
        item_json_path = os.path.join(items_out_item_dir, f"{item_name}.json")
        model_ref = f"brg.seedbook:block/unknown/{item_name}"

    item_json = {
        "model": {
            "type": "minecraft:model",
            "model": model_ref
        }
    }
    with open(item_json_path, "w", encoding="utf-8") as f:
        json.dump(item_json, f, indent=2)
    print(f"🧾 Created item JSON: {item_json_path}")

