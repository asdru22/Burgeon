scoreboard players add @s brg.dummy2 1

execute if entity @s[scores={brg.dummy2=8}] run return run data merge entity @s {start_interpolation:-1,interpolation_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

execute if entity @s[scores={brg.dummy2=9..}] run return run function brg:item/intertwined/spear/kill

#prepare raycast
scoreboard players set #temp_0 brg.dummy 0
data remove storage brg:macro root
data modify storage brg:macro root.UUID set from entity @s data.brg.UUID

execute positioned ^ ^ ^-0.4 run function brg:item/intertwined/spear/raycast
