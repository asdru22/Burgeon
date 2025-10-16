# Commands to run as the item display

tag @s remove brg.spile.initiate

# Handle rotations and wall placement
execute if block ~ ~ ~ player_wall_head positioned ~ ~0.25 ~ run return run function brg:block/spile/wall_placement

execute if block ~ ~-1 ~ flowering_azalea_leaves run advancement grant @p[advancements={brg:technical/placed_block/custom_block=true}] only brg:burgeon/make_suspicious_bush

execute if block ~ ~ ~ player_head[rotation=15] run return run rotate @s 180 0
execute if block ~ ~ ~ player_head[rotation=0] run return run rotate @s 180 0
execute if block ~ ~ ~ player_head[rotation=1] run return run rotate @s 180 0
execute if block ~ ~ ~ player_head[rotation=2] run return run rotate @s 180 0

execute if block ~ ~ ~ player_head[rotation=3] run return run rotate @s -90 0
execute if block ~ ~ ~ player_head[rotation=4] run return run rotate @s -90 0
execute if block ~ ~ ~ player_head[rotation=5] run return run rotate @s -90 0
execute if block ~ ~ ~ player_head[rotation=6] run return run rotate @s -90 0

#execute if block ~ ~ ~ player_head[rotation=7] run return run rotate @s 90 0
#execute if block ~ ~ ~ player_head[rotation=8] run return run rotate @s -90 0
#execute if block ~ ~ ~ player_head[rotation=9] run return run rotate @s 180 0
#execute if block ~ ~ ~ player_head[rotation=10] run return run rotate @s 180 0

execute if block ~ ~ ~ player_head[rotation=11] run return run rotate @s 90 0
execute if block ~ ~ ~ player_head[rotation=12] run return run rotate @s 90 0
execute if block ~ ~ ~ player_head[rotation=13] run return run rotate @s 90 0
execute if block ~ ~ ~ player_head[rotation=14] run return run rotate @s 90 0
