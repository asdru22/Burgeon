import json
import os

# === CONFIG ===
INPUT_FILE = "scripts/damp_notes_entries.json"
OUTPUT_DIR = r"datapack/data/brg/dialog/damp_notes"
NAMESPACE = "brg:damp_notes"
TRIGGER_ID = 102
# ==============


def make_dialog(entry, index, total):
    """Generate a Minecraft-style dialog JSON for the given entry index."""
    ingredient1 = entry.get("ingredient1", {})
    ingredient2 = entry.get("ingredient2", {})
    result = entry.get("result", {})

    # --- BODY SECTION ---
    body = []

    if ingredient1:
        body.append({
            "type": "minecraft:item",
            "item": ingredient1
        })
    if ingredient2:
        body.append({
            "type": "minecraft:plain_message",
            "contents": {"text": "+"}
        })
        body.append({
            "type": "minecraft:item",
            "item": ingredient2
        })

    # result separator
    body.append({
        "type": "minecraft:plain_message",
        "contents": {
            "translate": "seedbook.brg.ui.result",
            "font": "brg.seedbook:main"
        }
    })
    body.append({
        "type": "minecraft:item",
        "item": result
    })

    # --- ACTION BUTTONS ---
    actions = []

    # Previous button
    previous_button = {
        "label": {"translate": "seedbook.brg.previous"},
        "width":80
    }
    if index > 0:
        previous_button["action"] = {
            "type": "minecraft:show_dialog",
            "dialog": f"{NAMESPACE}/{index - 1}"
        }
    actions.append(previous_button)

    # Next button
    next_button = {
        "label": {"translate": "seedbook.brg.next"},
        "width":80
    }
    if index < total - 1:
        next_button["action"] = {
            "type": "minecraft:show_dialog",
            "dialog": f"{NAMESPACE}/{index + 1}"
        }
    actions.append(next_button)

    # --- FINAL JSON STRUCTURE ---
    dialog = {
        "type": "minecraft:multi_action",
        "title": {"translate": "item.brg.damp_notes"},
        "body": body,
        "inputs": [],
        "can_close_with_escape": True,
        "pause": False,
        "after_action": "none",
        "exit_action": {
            "label": {"translate": "seedbook.brg.done"},
            "action": {
                "type": "minecraft:run_command",
                "command": f"trigger brg.seedbook set {TRIGGER_ID}"
            }
        },
        "actions": actions
    }

    return dialog


def main():
    # Load the recipes JSON
    with open(INPUT_FILE, "r", encoding="utf-8") as f:
        data = json.load(f)

    entries = data.get("entries", [])
    total = len(entries)

    if not entries:
        print("No entries found in input file.")
        return

    # Ensure output directory exists
    os.makedirs(OUTPUT_DIR, exist_ok=True)

    # Generate one file per entry
    for i, entry in enumerate(entries):
        dialog_data = make_dialog(entry, i, total)
        out_path = os.path.join(OUTPUT_DIR, f"{i}.json")
        with open(out_path, "w", encoding="utf-8") as out_file:
            json.dump(dialog_data, out_file, indent=2, ensure_ascii=False)
        print(f"✅ Generated {out_path}")

    print(f"\nAll {total} dialogs generated in '{OUTPUT_DIR}/'.")


if __name__ == "__main__":
    main()
