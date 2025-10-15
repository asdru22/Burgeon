data modify storage brg:temp root.rotation set from entity @s Rotation
tag @s add brg.temp
execute summon item_display run function brg:block/spile/interact/initiate_bottle with storage brg:macro root
tag @s remove brg.temp
tag @s add brg.spile.bottle
