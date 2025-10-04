tellraw @p {"score":{"name":"#temp_0","objective":"brg.dummy"}}

tag @s add brg.murky_crevice
tag @s remove brg.glutted_log
scoreboard players reset @s brg.consumed_beans

data modify entity @s item.components."minecraft:item_model" set value "brg:block/murky_crevice"
data merge block ~ ~ ~ {CustomName:{"font":"brg:technical","translate":"block.brg.murky_crevice.name"}}
