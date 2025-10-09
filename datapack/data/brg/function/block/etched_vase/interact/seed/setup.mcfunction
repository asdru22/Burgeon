# Commands ran as the newly summoned seed

ride @s mount @n[type=item_display,tag=brg.temp,distance=..2]
item replace entity @s contents from entity @p[advancements={brg:technical/player_interacted_with_entity/interaction={interact=true}}] weapon.mainhand
tag @s add brg.etched_vase.seed
item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["age0"],mode:"replace_all"}}
data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.83f,0f],scale:[0.66f,0.66f,0.66f]}}

data modify entity @s Rotation set from storage brg:temp root.rotation
