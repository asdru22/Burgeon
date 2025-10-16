$data modify entity @s item set value $(item)
item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["entity"],mode:"replace_all"}}
data merge entity @s {teleport_duration:2,item_display:"head",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.66f,0.66f,0.66f]}}
tag @s add brg.item_display
tag @s add brg.bursting_blossom
