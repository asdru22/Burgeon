tag @s add brg.temp
$execute summon item_display run function brg:block/murky_crevice/claw/held_item/as_held_item {loot_table:"$(loot_table)"}
tag @s remove brg.temp
tag @s add brg.murky_crevice_claw.holding_item
