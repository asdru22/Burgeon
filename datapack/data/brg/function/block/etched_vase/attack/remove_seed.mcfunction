# Give results and kill self

data modify storage brg:temp root.item set from entity @s item

function brg:block/etched_vase/break/drop_seed with entity @s item.components."minecraft:custom_data".brg

execute if data storage brg:temp root.item.components."minecraft:custom_data".brg{id:"sour_kernel"} on vehicle run function brg:block/etched_vase/attack/reset_soil_data

kill @s
