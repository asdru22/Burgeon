import re
import json
import nbtlib
import pyperclip
from nbtlib.tag import Byte, Short, Int, Long, Float, Double, String, List, Compound


def extract_braced_section(text: str, start_index: int) -> str:
    # Extract {...} section with balanced braces starting at start_index
    if text[start_index] != "{":
        raise ValueError("Expected '{' at start index")
    depth = 0
    for i in range(start_index, len(text)):
        if text[i] == "{":
            depth += 1
        elif text[i] == "}":
            depth -= 1
            if depth == 0:
                return text[start_index:i+1]
    raise ValueError("Unbalanced braces in input")


def extract_components(command: str) -> str:
    # Find the components:{...} block from the /setblock string
    match = re.search(r"components:", command)
    if not match:
        raise ValueError("No components block found")
    start = match.end()  # index right after "components:"
    return extract_braced_section(command, start)


def nbt_to_python(obj):
    # Recursively convert nbtlib tags into plain Python types
    if isinstance(obj, Byte):
        # Interpret 0b/1b as False/True, otherwise keep as int
        if int(obj) == 0:
            return False
        elif int(obj) == 1:
            return True
        return int(obj)
    if isinstance(obj, (Short, Int, Long)):
        return int(obj)
    elif isinstance(obj, (Float, Double)):
        return float(obj)
    elif isinstance(obj, String):
        return str(obj)
    elif isinstance(obj, List):
        return [nbt_to_python(x) for x in obj]
    elif isinstance(obj, Compound):
        return {str(k): nbt_to_python(v) for k, v in obj.items()}
    else:
        return obj


def nbt_to_json(nbt_str: str):
    # Convert Mojang SNBT to JSON
    tag = nbtlib.parse_nbt(nbt_str)
    return nbt_to_python(tag)


if __name__ == "__main__":
    print("Paste your /setblock command:")
    user_input = input().strip()

    try:
        components_nbt = extract_components(user_input)
        components_json = nbt_to_json(components_nbt)
        json_text = json.dumps(components_json, indent=2, ensure_ascii=False)

        # Print to console
        print(json_text)

        # Copy to clipboard
        pyperclip.copy(json_text)
        print("\n✅ Copied to clipboard!")
    except Exception as e:
        print(f"Error: {e}")
