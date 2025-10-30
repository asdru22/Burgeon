item replace entity @s contents with stone[item_model="brg:block/spile_bottle_empty"]
data modify entity @s item_display set value "head"
data modify entity @s Rotation set from storage brg:temp root.rotation
ride @s mount @n[type=item_display,tag=brg.temp,distance=..2]
tag @s add brg.spile_bottle
