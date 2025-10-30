data modify storage brg:macro root.item set from entity @s item

execute unless data storage brg:macro root.item.components."minecraft:custom_data" run data modify storage brg:macro root.item set value {id:"minecraft:glass_bottle",count:1}

execute if data storage brg:macro root.item.components."minecraft:custom_data" run data remove storage brg:macro root.item.components."minecraft:custom_model_data"

function brg:technical/macros/spawn_item with storage brg:macro root

execute on vehicle run tag @s remove brg.spile.bottle

kill @s
