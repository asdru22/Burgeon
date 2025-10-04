# Commands to run when a player places a hopper

scoreboard players reset #temp_0 brg.dummy
execute store result score #temp_0 brg.dummy run attribute @s minecraft:block_interaction_range get 1.0
scoreboard players add #temp_0 brg.dummy 2
data remove storage brg:temp root.macro_input
execute store result storage brg:temp root.macro_input.distance int 1 run scoreboard players get #temp_0 brg.dummy
function brg:block/hopper_updating/distance_macro with storage brg:temp root.macro_input
advancement revoke @s only brg:technical/placed_block/hopper
