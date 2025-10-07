tag @s add brg.murky_crevice
tag @s remove brg.glutted_log
scoreboard players reset @s brg.consumed_beans

data modify entity @s item.components."minecraft:item_model" set value "brg:block/murky_crevice"
data merge block ~ ~ ~ {CustomName:{"font":"brg:technical","translate":"block.brg.murky_crevice.name"}}

$advancement grant @p[nbt={UUID:$(owner)}] only brg:burgeon/convert_glutted_log

playsound brg:block.glutted_log.convert block @a[distance=..16]

# north/2
execute if score #temp_0 brg.dummy matches -18000..-13501 run return run rotate @s 180 0
# east
execute if score #temp_0 brg.dummy matches -13500..-4501 run return run rotate @s -90 0
# south
execute if score #temp_0 brg.dummy matches -4500..4499 run return run rotate @s 0 0
# west
execute if score #temp_0 brg.dummy matches 4500..13499 run return run rotate @s 90 0
# north/2
rotate @s 180 0
