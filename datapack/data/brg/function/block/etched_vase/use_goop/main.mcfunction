scoreboard players add @s brg.seed_age 2

execute store result score #temp_0 brg.dummy run data get entity @s item.components."minecraft:custom_data".brg.stage

execute if score @s brg.seed_age >= #temp_0 brg.dummy run function brg:block/etched_vase/use_goop/advancement

particle falling_lava ~ ~ ~ 0.1 0.2 0.1 0 10

playsound brg:item.goop_bottle.use player @a[distance=..16] ~ ~ ~ 0.66 0.55

execute if score #drop_item brg.dummy matches 1 as @p[advancements={brg:technical/player_interacted_with_entity/interaction={interact=true}}] run function brg:block/etched_vase/use_goop/as_player
