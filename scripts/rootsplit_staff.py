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
    """Interpolates a color from start_color to end_color over a given number of steps."""
    r = int(start_color[0] + (end_color[0] - start_color[0]) * (step / steps))
    g = int(start_color[1] + (end_color[1] - start_color[1]) * (step / steps))
    b = int(start_color[2] + (end_color[2] - start_color[2]) * (step / steps))
    return r, g, b

def generate_images(n, output_dir="./resourcepack/assets/brg/textures/item/rootsplit_staff"):
    """Generates N texture images in a 2x13 region, looping if n > 13."""
    os.makedirs(output_dir, exist_ok=True)
    start_color = (0, 255, 255)  # Aqua
    end_color = (255, 255, 255)  # White
    steps = 13  # always draw in 2x13 region

    for i in range(1, n + 1):
        img = Image.new("RGBA", (16, 16), (0, 0, 0, 0))
        pixels = img.load()
        if pixels is None:
          raise RuntimeError("Could not access image pixels")

        # Determine color based on interpolated step (wrap around 13)
        color = interpolate_color(start_color, end_color, steps - 1, (i - 1) % steps + 1)

        # Draw a 2x13 rectangle
        for x in range(2, 4):
            for y in range(3, 16):
                pixels[x, y] = color + (255,)

        file_path = os.path.join(output_dir, f"{i}.png")
        img.save(file_path)
        print(f"Saved texture: {file_path}")

if __name__ == "__main__":
    file_path = "./resourcepack/assets/brg/items/rootsplit_sickle.json"
    json_data = read_json_file(file_path)

    n = 20  # number of entries to generate
    entries = generate_entries(n)
    json_data = set_entries(json_data, entries)

    # Write modified JSON back to file
    with open(file_path, "w", encoding="utf-8") as f:
        json.dump(json_data, f, indent=4)
    print(f"Updated entries in {file_path}")

    # Generate models and textures
    create_model_files(n)
    generate_images(n)
