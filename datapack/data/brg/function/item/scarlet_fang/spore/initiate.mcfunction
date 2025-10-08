data merge entity @s {Tags:["brg.item_display","brg.scarlet_spore","smithed.entity"],interpolation_duration:3,teleport_duration:1,transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"brg:entity/scarlet_spore"}},view_range:4.0f}

data modify entity @s item.components."minecraft:custom_data".brg.macro_input.UUID set from storage brg:temp root.scarlet_spore.UUID
tp @s ~ ~ ~ ~ ~

