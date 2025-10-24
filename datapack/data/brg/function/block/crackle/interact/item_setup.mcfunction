ride @s mount @n[type=item_display,tag=brg.temp]
tag @s add brg.crackle_item
data modify entity @s item set from storage brg:temp root.item
data modify entity @s item.count set value 1
data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:{axis:[0.0f,1.0f,0.0f],angle:1.57},translation:[0.05f,1.15f,0f],scale:[0.5f,0.5f,0.5f]}}
