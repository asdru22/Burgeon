# set cmd
item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["ground"],mode:"replace_all"}}

# entity data
data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.3125f,0f],scale:[1f,1f,1f]}
execute on passengers if entity @s[type=interaction] run data modify entity @s width set value 0.55
execute positioned ^ ^ ^0.25 positioned ~ ~-0.25 ~ run tp @s ~ ~ ~
tag @s remove brg.spile.wall

# prepare macro
data remove storage brg:macro root
data modify storage brg:macro root.components set from block ~ ~ ~ components
data modify storage brg:macro root.profile set from block ~ ~ ~ profile
execute if block ~ ~ ~ player_wall_head[facing=north] run data modify storage brg:macro root.rotation set value 0
execute if block ~ ~ ~ player_wall_head[facing=east] run data modify storage brg:macro root.rotation set value 4
execute if block ~ ~ ~ player_wall_head[facing=south] run data modify storage brg:macro root.rotation set value 8
execute if block ~ ~ ~ player_wall_head[facing=west] run data modify storage brg:macro root.rotation set value 12
#setblock 
function brg:block/spile/state/ground_macro with storage brg:macro root
