# Remove item and summon seed

# Check if soil matches
data remove storage brg:temp root.soil

execute run data modify storage brg:temp root.soil set from entity @s item.components."minecraft:custom_data".brg.soil
data remove storage brg:temp root.soil.count
data remove storage brg:temp root.item.count

execute store success score #temp_0 brg.dummy run data modify storage brg:temp root.soil set from storage brg:temp root.item.components."minecraft:custom_data".brg.seed.soil

execute if score #temp_0 brg.dummy matches 1 run return fail


# summon item display
tag @s add brg.etched_vase.has_seed
tag @s add brg.temp
execute summon item_display run function brg:block/etched_vase/interact/seed/setup
tag @s remove brg.temp

item modify entity @p[gamemode=!creative,advancements={brg:technical/player_interacted_with_entity/interaction={interact=true}}] weapon.mainhand brg:reduce_count
