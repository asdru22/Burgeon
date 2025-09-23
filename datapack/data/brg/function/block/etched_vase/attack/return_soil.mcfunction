# Give soil to the player and remove data

data modify storage brg:temp root.item set from entity @s item.components."minecraft:custom_data".brg.soil

execute unless data storage brg:temp root.item.components run data modify storage brg:temp root.item.components set value {}
data modify storage brg:temp root.item.count set value 1
data modify storage brg:temp root.item.slot set value "weapon.mainhand"
execute as @p[advancements={brg:technical/player_interacted_with_entity/interaction={attack=true}}] run function brg:block/etched_vase/attack/call_macros

function brg:block/etched_vase/attack/reset_soil_data
