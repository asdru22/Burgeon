# Give results and kill self

data modify storage brg:temp root.item set from entity @s item

execute if data storage brg:temp root.item.components."minecraft:custom_model_data"{strings:["age1"]} run advancement grant @p[advancements={brg:technical/player_interacted_with_entity/interaction={attack=true}}] only brg:burgeon/collect_grown_plant

function brg:block/etched_vase/break/drop_seed with entity @s item.components."minecraft:custom_data".brg

execute if data storage brg:temp root.item.components."minecraft:custom_data".brg{id:"sour_kernel"} on vehicle run function brg:block/etched_vase/attack/reset_soil_data

kill @s
