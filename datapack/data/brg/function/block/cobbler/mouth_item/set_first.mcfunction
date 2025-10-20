ride @s mount @n[type=item_display,tag=brg.temp,distance=..2]

loot replace entity @s contents loot brg:items/damp_notes
tag @s add brg.cobbler_item

data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:{axis:[0.0f,0.0f,1.0f],angle:-1.57079632679f},translation:[0f,1.5f,0f],scale:[0.4,0.4,0.4]}}

data modify entity @s Rotation set from storage brg:temp root.rotation
rotate @s ~90 0
