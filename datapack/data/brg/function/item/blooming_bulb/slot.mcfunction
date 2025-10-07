$data modify storage brg:temp root.item set from entity @s Inventory[{Slot:$(slot)b}]

execute store result score #temp_0 brg.dummy run data get storage brg:temp root.item.components."minecraft:custom_model_data".floats[0]

scoreboard players add #temp_0 brg.dummy 1
execute if score #temp_0 brg.dummy matches 14 run function brg:item/blooming_bulb/heal

data remove storage brg:macro root
execute store result storage brg:macro root.charge int 1 run scoreboard players get #temp_0 brg.dummy
$data modify storage brg:macro root.slot set value $(slot)
function brg:item/blooming_bulb/macro with storage brg:macro root
