item replace entity @s contents with stone[item_model="brg:entity/intertwined_crossbow_vine"]
tag @s add brg.intertwined_crossbow_vine
tag @s add brg.ten_tick_clock
tag @s add brg.item_display
data modify entity @s data.brg.owner set from storage brg:temp root.uuid
data merge entity @s {teleport_duration:2, transformation:{left_rotation:{axis:[0.0f,0.0f,1.0f],angle:-0.3f},translation:[0.0f,0.8f,0.0f]},interpolation_duration:10}
