# Commands to run as the item display

tag @s remove brg.crackle.initiate

# Prevent wall placement
execute if block ~ ~ ~ player_wall_head run function brg:block/crackle/wall_placement

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
