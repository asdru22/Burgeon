# Seed placement
execute if data storage brg:temp root.item.components."minecraft:custom_data".brg.seed run return run function brg:block/etched_vase/interact/seed/place

execute if data storage brg:temp root.item.components."minecraft:custom_data".brg.replant run return run function brg:block/etched_vase/interact/replant/main
