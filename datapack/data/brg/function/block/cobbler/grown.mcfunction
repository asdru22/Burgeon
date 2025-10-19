execute on passengers if entity @s[type=interaction] run data modify entity @s height set value 1.6
tag @s add brg.temp
data modify storage brg:temp root.rotation set from entity @s Rotation
execute summon item_display run function brg:block/cobbler/mouth_item/set
tag @s remove brg.temp
