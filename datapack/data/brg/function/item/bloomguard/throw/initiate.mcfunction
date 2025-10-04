data merge entity @s {Tags:["brg.item_display","brg.bloomguard","smithed.entity"],interpolation_duration:3,teleport_duration:1,transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:{axis:[0.0f,1.0f,0.0f],angle:-1.57079632679f},scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"brg:bloomguard"}},view_range:4.0f}
data modify entity @s item.components."minecraft:custom_data".brg.item set from storage brg:temp root.bloomguard.item
data modify entity @s item.components."minecraft:custom_data".brg.item.count set value 1
data modify entity @s item.components."minecraft:custom_data".brg.macro_input.slot set from storage brg:temp root.bloomguard.slot
data modify entity @s item.components."minecraft:custom_data".brg.macro_input.UUID set from storage brg:temp root.bloomguard.UUID
data modify entity @s item.components."minecraft:custom_data".brg.gamemode set from storage brg:temp root.bloomguard.gamemode
data modify entity @s item.components."minecraft:custom_data".brg.macro_input.fire set value "0"
tp @s ~ ~ ~ ~ ~
