execute store result score #temp_0 brg.dummy run data get entity @s SelectedItem.components."minecraft:damage"
#offhand item damage
execute store result score #temp_1 brg.dummy run data get entity @s equipment.offhand.components."minecraft:damage"

scoreboard players add #temp_0 brg.dummy 20

execute if score #temp_0 brg.dummy matches 465.. run return run function brg:item/rootsplit_sickle/break_on_combine

# get total damage
data remove storage brg:temp root
execute store result storage brg:temp root.damage int 1 run scoreboard players operation #temp_0 brg.dummy += #temp_1 brg.dummy

playsound brg:item.rootsplit_sickle.combine player @a[distance=..16]

item replace entity @s weapon.offhand with air
item modify entity @s weapon.mainhand brg:rootsplit_sickle/combine

effect give @s speed 10 0
effect give @s hunger 20 1
