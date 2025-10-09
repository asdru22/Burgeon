# If no seed or soil, allow soil placement
execute if entity @s[tag=!brg.etched_vase.has_soil, tag=!brg.etched_vase.has_seed] if function brg:block/etched_vase/interact/soil/place_check run function brg:block/etched_vase/interact/soil/place_success

execute if block ~ ~ ~ #brg:etched_vase_base[powered=true] run return fail

# If soil but no seed, allow seed placement
execute if entity @s[tag=brg.etched_vase.has_soil, tag=!brg.etched_vase.has_seed] if data storage brg:temp root.item.components."minecraft:custom_data".brg.seed run function brg:block/etched_vase/interact/seed/place
