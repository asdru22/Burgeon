# Increments durability on a specific slot of the player (also handles breaking)

# Increments the damage value

$execute if items entity @s $(slot) *[minecraft:enchantments~[{enchantments:"minecraft:unbreaking",levels:1}]] if predicate brg:random_chance/0.5 run return 1
$execute if items entity @s $(slot) *[minecraft:enchantments~[{enchantments:"minecraft:unbreaking",levels:2}]] unless predicate brg:random_chance/0.33 run return 2
$execute if items entity @s $(slot) *[minecraft:enchantments~[{enchantments:"minecraft:unbreaking",levels:3}]] unless predicate brg:random_chance/0.25 run return 3

data remove storage brg:temp root
$data modify storage brg:temp root.item set from entity @s $(slot_raw)
execute store result score #temp_0 brg.dummy run data get storage brg:temp root.item.components."minecraft:damage"

$execute store result storage brg:temp root.macro_input.damage int 1 run scoreboard players add #temp_0 brg.dummy $(amount)
$data modify storage brg:temp root.macro_input.slot set value $(slot)
function brg:technical/macros/damage_slot/damage with storage brg:temp root.macro_input

# Anything after this line runs if the item should break
$execute if items entity @s $(slot) *[minecraft:damage~{durability:{min:1}}] run return 0

$item modify entity @s $(slot) brg:reduce_count
execute at @s run function brg:technical/macros/damage_slot/particle with storage brg:temp root
playsound minecraft:entity.item.break player @a[distance=..16]
