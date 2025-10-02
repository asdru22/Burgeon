# Remove item and summon seed
# Check if soil matches
data remove storage brg:temp root.soil

execute run data modify storage brg:temp root.soil set from entity @s item.components."minecraft:custom_data".brg.soil
data remove storage brg:temp root.item.count

execute store success score #temp_0 brg.dummy run data modify storage brg:temp root.soil set from storage brg:temp root.item.components."minecraft:custom_data".brg.seed.soil

execute if score #temp_0 brg.dummy matches 1 run return fail
# summon item display
tag @s add brg.etched_vase.has_seed
scoreboard players set @s brg.seed_age 0

data modify storage brg:temp root.rotation set from entity @s Rotation

tag @s add brg.temp
execute positioned ~ ~-0.5 ~ summon item_display run function brg:block/etched_vase/interact/seed/setup
tag @s remove brg.temp

item modify entity @p[gamemode=!creative,advancements={brg:technical/player_interacted_with_entity/interaction={interact=true}}] weapon.mainhand brg:reduce_count

execute store result score #temp_0 brg.dummy run data get storage brg:temp root.item.components."minecraft:custom_data".brg.seed.stages
execute store result score #temp_1 brg.dummy run random value -3..3
scoreboard players operation #temp_0 brg.dummy += #temp_1 brg.dummy
execute store result entity @s item.components."minecraft:custom_data".brg.stage int 1 run scoreboard players operation #temp_0 brg.dummy > #1 brg.dummy

playsound minecraft:item.crop.plant block @a[distance=..16]
