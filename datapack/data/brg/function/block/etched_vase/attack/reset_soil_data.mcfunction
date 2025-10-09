# Reset soil data

data modify block ~ ~ ~ profile.texture set value "brg:block/etched_vase_soil/empty"
data remove entity @s item.components."minecraft:custom_data".brg.soil
tag @s remove brg.etched_vase.has_soil
playsound brg:block.etched_vase.take_soil block @a[distance=..16]
