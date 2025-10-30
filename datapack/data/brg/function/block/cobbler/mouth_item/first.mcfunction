tag @s add brg.temp
data modify storage brg:temp root.rotation set from entity @s Rotation
execute summon item_display run function brg:block/cobbler/mouth_item/set_first
tag @s remove brg.temp
