# Remove item and apply soil data

tag @s add brg.etched_vase.has_soil
item modify entity @p[gamemode=!creative,advancements={brg:technical/player_interacted_with_entity/interaction={interact=true}}] weapon.mainhand brg:reduce_count
data remove storage brg:temp root.item.count
data modify entity @s item.components."minecraft:custom_data".brg.soil set from storage brg:temp root.item
playsound brg:block.etched_vase.fill_success block @a[distance=..16]
