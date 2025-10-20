tag @s add brg.temp
data modify storage brg:temp root.rotation set from entity @s Rotation
execute summon item_display run function brg:block/cobbler/mouth_item/set with storage brg:macro root
tag @s remove brg.temp

item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["age1"],mode:"replace_all"}}
