import json
import os
from PIL import Image

def read_json_file(file_path):
    """Opens a file and parses the JSON content."""
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            data = json.load(file)
            return data
    except FileNotFoundError:
        print(f"Error: The file '{file_path}' was not found.")
    except json.JSONDecodeError as e:
        print(f"Error: Invalid JSON format. Details: {e}")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

def get_entries(json_data):
    return json_data["model"]["cases"][0]["model"]["cases"][0]["model"]["models"][2]["entries"]

def set_entries(json_data, entries):
    json_data["model"]["cases"][0]["model"]["cases"][0]["model"]["models"][2]["entries"] = entries
    return json_data

def generate_entries(n):
    """Generates N entries for the rootsplit_staff."""
    entries = []
    for i in range(1, n + 1):
        entries.append({
            "threshold": i,
            "model": {
                "type": "minecraft:model",
                "model": f"brg:item/rootsplit_staff/{i}"
            }
        })
    return entries

def create_model_files(n, base_dir="./resourcepack/assets/brg/models/item/rootsplit_staff"):
    """Creates N model JSON files for the staff."""
    os.makedirs(base_dir, exist_ok=True)
    for i in range(1, n + 1):
        model_data = {
            "parent": "item/handheld",
            "textures": {
                "layer0": f"brg:item/rootsplit_staff/{i}"
            }
        }
        file_path = os.path.join(base_dir, f"{i}.json")
        with open(file_path, "w", encoding="utf-8") as f:
            json.dump(model_data, f, indent=4)
        print(f"Created model: {file_path}")

def interpolate_color(start_color, end_color, steps, step):
    """Interpolate a color for 'step' out of 'steps' (both 1-based)."""
    if steps <= 1:
        return start_color
    t = (step - 1) / (steps - 1)
    r = int(round(start_color[0] + (end_color[0] - start_color[0]) * t))
    g = int(round(start_color[1] + (end_color[1] - start_color[1]) * t))
    b = int(round(start_color[2] + (end_color[2] - start_color[2]) * t))
    return (r, g, b)

def generate_images(n,
                    output_dir="./resourcepack/assets/brg/textures/item/rootsplit_staff",
                    start_color=(255, 255, 255),
                    end_color=(255, 0, 255)):
    """
    Generate n textures:
     - Each texture is 16x16.
     - The 13-pixel wide bar starts at x=2 (3rd pixel from left) and y=13
       (3rd pixel from bottom), height 1 pixel.
     - The bar visualizes an original bar of length i (1..n) compressed into 13 px.
     - Per-pixel alpha = coverage of the compressed pixel by the scaled bar.
    """
    os.makedirs(output_dir, exist_ok=True)

    IMG_W, IMG_H = 16, 16
    X_START = 2          # 3rd pixel from left
    Y = IMG_H - 3        # 3rd pixel from bottom -> 13
    COMPRESSED_PX = 13   # width of the bar in pixels

    for i in range(1, n + 1):
        img = Image.new("RGBA", (IMG_W, IMG_H), (0, 0, 0, 0))
        pixels = img.load()
        if pixels is None:
            raise RuntimeError("Could not access image pixels")

        # color for this bar (smooth from start_color -> end_color across n steps)
        color = interpolate_color(start_color, end_color, n, i)

        # How long would the original bar be, mapped into the 13-pixel compressed space (float).
        compressed_length = (i / n) * COMPRESSED_PX  # float in [0, COMPRESSED_PX]

        # For each compressed pixel, compute overlap with [0, compressed_length)
        for px in range(COMPRESSED_PX):
            left = px
            right = px + 1
            coverage = min(right, compressed_length) - max(left, 0)
            if coverage <= 0:
                # No coverage -> leave transparent
                continue
            # Clamp coverage to [0,1]
            if coverage > 1:
                coverage = 1.0
            alpha = int(round(coverage * 255))
            # Set pixel at (X_START + px, Y) with the bar color and computed alpha
            pixels[X_START + px, Y] = (color[0], color[1], color[2], alpha)

        filename = os.path.join(output_dir, f"{i}.png")
        img.save(filename)
        print(f"Saved texture: {filename}")

if __name__ == "__main__":
    file_path = "./resourcepack/assets/brg/items/rootsplit_sickle.json"
    json_data = read_json_file(file_path)

    n = 20  # number of entries to generate
    entries = generate_entries(n)
    json_data = set_entries(json_data, entries)

    # Write modified JSON back to file
    with open(file_path, "w", encoding="utf-8") as f:
        json.dump(json_data, f, indent=2)
    print(f"Updated entries in {file_path}")

    # Generate models and textures
    create_model_files(n)
    generate_images(n)
