# Give soil to the player and remove data

data modify block ~ ~ ~ profile.texture set value "brg:block/etched_vase_soil/empty"
data remove entity @s item.components."minecraft:custom_data".brg.soil
tag @s remove brg.etched_vase.has_soil

data modify storage brg:temp root.item set from entity @s item.components."minecraft:custom_data".brg.soil

execute as @p[advancements={brg:technical/player_interacted_with_entity/interaction={attack=true}}] run function brg:block/etched_vase/attack/return_soil with storage brg:temp root.item
