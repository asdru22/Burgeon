tag @s remove brg.murky_crevice.claw_extending
tag @s add brg.glutted_log
tag @s remove brg.murky_crevice

data modify entity @s item.components."minecraft:item_model" set value "brg:block/glutted_log"
data merge block ~ ~ ~ {CustomName:{"font":"brg:technical","translate":"block.brg.glutted_log.name"}}

loot spawn ^ ^ ^1.4 loot brg:items/crackle

execute if data storage brg:temp root.owner run function brg:block/murky_crevice/sugarcoated_bean/convert_advancement with storage brg:temp root

playsound brg:block.crackle.squeal player @a[distance=..16]
