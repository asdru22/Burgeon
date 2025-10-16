# insert soil data
data modify storage brg:temp root.item.components."minecraft:custom_data".brg.seed.soil set from storage brg:temp root.item.components."minecraft:custom_data".brg.replant.soil

function brg:block/etched_vase/interact/seed/place

# override new seed data with grown plant data
execute on passengers run function brg:block/etched_vase/interact/replant/as_plant with storage brg:temp root.item.components."minecraft:custom_data".brg.replant
