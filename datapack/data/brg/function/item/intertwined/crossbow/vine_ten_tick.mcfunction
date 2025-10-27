scoreboard players add @s brg.dummy2 1
execute if entity @s[scores={brg.dummy2=5}] run data merge entity @s {start_interpolation:-1,interpolation_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

execute if entity @s[scores={brg.dummy2=6..}] run return run kill

# Rotate the vine

scoreboard players operation #temp_1 brg.dummy = @s brg.dummy2
scoreboard players operation #temp_1 brg.dummy %= #4 brg.dummy
execute if score #temp_1 brg.dummy matches 0 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,1.0f,0.0f],angle:0.0f}}}
execute if score #temp_1 brg.dummy matches 1 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,1.0f,0.0f],angle:-1.57079632679f}}}
execute if score #temp_1 brg.dummy matches 2 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,1.0f,0.0f],angle:-3.141f}}}
execute if score #temp_1 brg.dummy matches 3 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,1.0f,0.0f],angle:-4.71238898038f}}}

tag @s add brg.temp

data remove storage brg:macro root
data modify storage brg:macro root.UUID set from entity @s data.brg.owner

execute as @e[type=!#brg:intertwined_crossbow_vine_ignore,distance=..3,predicate=!brg:entity_properties/in_vehicle] at @s run function brg:item/intertwined/crossbow/entity_interaction with storage brg:macro root
tag @s remove brg.temp
