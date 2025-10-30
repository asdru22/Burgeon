$loot replace entity @s contents loot brg:items/$(seed)
data modify storage brg:macro root.dialog.seed set from entity @s item
data modify storage brg:macro root.dialog.soil set from entity @s item.components."minecraft:custom_data".brg.seed.soil
data modify storage brg:macro root.dialog.stages set from entity @s item.components."minecraft:custom_data".brg.seed.stages
$loot replace entity @s contents loot brg:items/$(result)
data modify storage brg:macro root.dialog.result set from entity @s item

loot replace entity @s contents loot brg:items/etched_vase
data modify storage brg:macro root.dialog.vase set from entity @s item

kill @s
