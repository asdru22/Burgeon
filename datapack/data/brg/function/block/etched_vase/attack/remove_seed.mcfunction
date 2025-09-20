# Give results and kill self

data modify storage brg:temp root.item set from entity @s item

function brg:block/etched_vase/break/drop_seed with entity @s item.components."minecraft:custom_data".brg

kill @s
