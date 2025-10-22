# Commands to run when a claw is fully extended and there are beans

execute unless function brg:block/murky_crevice/claw/found_bean run return fail
data merge entity @s {teleport_duration:15}

# normal bean
execute if data storage brg:temp root.item.components."minecraft:custom_data".brg{id:"bean"} unless data storage brg:temp root.item.components."minecraft:custom_model_data" run return run function brg:block/murky_crevice/claw/held_item/main {loot_table:"brg:items/bean"}

# sugarcoated bean
execute if data storage brg:temp root.item.components."minecraft:custom_data".brg{id:"bean"} run function brg:block/murky_crevice/claw/held_item/main {loot_table:"brg:items/sugarcoated_bean"}
