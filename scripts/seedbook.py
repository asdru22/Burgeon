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

# === STEP 4: Process Textures and Create JSONs ===
textures_out_dir = os.path.join(unknown_dir, "textures", "item","unknown")
items_out_dir = os.path.join(unknown_dir, "items","unknown")
models_out_dir = os.path.join(unknown_dir, "models", "item","unknown")

os.makedirs(textures_out_dir, exist_ok=True)
os.makedirs(items_out_dir, exist_ok=True)
os.makedirs(models_out_dir, exist_ok=True)

all_items = {name for pair in pairs for name in pair}

for item_name in all_items:
    src_path = os.path.join(textures_dir, f"{item_name}.png")
    dst_path = os.path.join(textures_out_dir, f"{item_name}.png")

    if not os.path.exists(src_path):
        print(f"Texture not found: {src_path}")
        continue

    # Load and convert non-transparent pixels to black
    img = Image.open(src_path).convert("RGBA")
    pixels = img.load()

    if pixels is None:
      raise RuntimeError(f"Failed to load pixels for {src_path}")

    for y in range(img.height):
        for x in range(img.width):
            r, g, b, alpha = pixels[x, y]
            if alpha != 0:  # not transparent
                pixels[x, y] = (0, 0, 0, alpha)  # make black but preserve alpha

    img.save(dst_path)
    print(f"Created texture: {dst_path}")

    # === item json ===
    item_json_path = os.path.join(items_out_dir, f"{item_name}.json")
    item_json = {
        "model": {
            "type": "minecraft:model",
            "model": f"brg.seedbook:item/unknown/{item_name}"
        }
    }
    with open(item_json_path, "w", encoding="utf-8") as f:
        json.dump(item_json, f, indent=2)
    print(f"Created item JSON: {item_json_path}")

    # === model json ===
    model_json_path = os.path.join(models_out_dir, f"{item_name}.json")
    model_json = {
        "parent": "item/generated",
        "textures": {
            "layer0": f"brg.seedbook:item/unknown/{item_name}"
        }
    }
    with open(model_json_path, "w", encoding="utf-8") as f:
        json.dump(model_json, f, indent=2)
    print(f"Created model JSON: {model_json_path}")
