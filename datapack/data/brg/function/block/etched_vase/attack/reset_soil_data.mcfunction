# Give soil to the player and remove data

data modify block ~ ~ ~ profile.texture set value "brg:block/etched_vase_soil/empty"

data modify storage brg:temp root.item set from entity @s item.components."minecraft:custom_data".brg.soil

execute unless data storage brg:temp root.item.components run data modify storage brg:temp root.item.components set value {}
data modify storage brg:temp root.item.slot set value "weapon.mainhand"
execute as @p[advancements={brg:technical/player_interacted_with_entity/interaction={attack=true}}] run function brg:block/etched_vase/attack/call_macros

data remove entity @s item.components."minecraft:custom_data".brg.soil
tag @s remove brg.etched_vase.has_soil
playsound brg:block.etched_vase.take_soil block @a[distance=..16]
