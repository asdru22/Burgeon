data modify entity @s Rotation set from storage brg:temp root.rotation
data modify entity @s data.brg.UUID set from storage brg:temp root.UUID

tag @s add brg.item_display
tag @s add brg.intertwined_spear_thorn
tag @s add brg.ten_tick_clock

item replace entity @s contents with stone[item_model="brg:entity/intertwined_spear_thorn"]
