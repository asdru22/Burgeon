# Handle wall directions

# Change cmd
item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["wall"],mode:"replace_all"}}

tag @s add brg.spile.wall
execute on passengers if entity @s[type=interaction] run data modify entity @s width set value 0.3

# prepare macro
data remove storage brg:macro root
data modify storage brg:macro root.components set from block ~ ~ ~ components
data modify storage brg:macro root.profile set from block ~ ~ ~ profile
function brg:block/spile/state/get_ground_rotation

# setblock
function brg:block/spile/state/ground_to_wall_macro with storage brg:macro root

# move entity stack
execute if block ~ ~ ~ player_wall_head[facing=south] run return run tp @s ~ ~ ~-0.25 0 0
execute if block ~ ~ ~ player_wall_head[facing=east] run return run tp @s ~-0.25 ~ ~ -90 0
execute if block ~ ~ ~ player_wall_head[facing=west] run return run tp @s ~0.25 ~ ~ 90 0
execute if block ~ ~ ~ player_wall_head[facing=north] run return run tp @s ~ ~ ~0.25 180 0
