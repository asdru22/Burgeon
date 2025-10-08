data modify storage brg:temp root.scarlet_spore.macro_input.x set from entity @s Pos[0]
execute store result score #temp_0 brg.dummy run data get entity @s Pos[1] 1000
execute store result storage brg:temp root.scarlet_spore.macro_input.y double 0.001 run scoreboard players add #temp_0 brg.dummy 1000
data modify storage brg:temp root.scarlet_spore.macro_input.z set from entity @s Pos[2]
