# Handle wall directions

item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["wall"],mode:"replace_all"}}

execute if block ~ ~ ~ player_wall_head[facing=south] run return run tp @s ~ ~ ~-0.25 0 0
execute if block ~ ~ ~ player_wall_head[facing=east] run return run tp @s ~-0.25 ~ ~ -90 0
execute if block ~ ~ ~ player_wall_head[facing=west] run return run tp @s ~0.25 ~ ~ 90 0
execute if block ~ ~ ~ player_wall_head[facing=north] run return run tp @s ~ ~ ~0.25 180 0

execute on passengers if entity @s[type=interaction] run data modify entity @s width set value 0.3
