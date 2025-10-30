# Handle wall directions

data remove storage brg:macro root
data modify storage brg:macro root.components set from block ~ ~ ~ components
data modify storage brg:macro root.profile set from block ~ ~ ~ profile
execute if block ~ ~ ~ player_wall_head[facing=north] run data modify storage brg:macro root.rotation set value 0
execute if block ~ ~ ~ player_wall_head[facing=east] run data modify storage brg:macro root.rotation set value 4
execute if block ~ ~ ~ player_wall_head[facing=south] run data modify storage brg:macro root.rotation set value 8
execute if block ~ ~ ~ player_wall_head[facing=west] run data modify storage brg:macro root.rotation set value 12

function brg:block/crackle/ground_macro with storage brg:macro root
