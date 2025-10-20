execute if predicate brg:random_chance/0.5 run scoreboard players add @s brg.seed_age 1

execute if score @s brg.seed_age matches ..9 run return fail

# when recipe is ready
tag @s remove brg.etched_vase.cobbler_recipe
data remove storage brg:macro root

# handle different results
data modify storage brg:temp root.result set from entity @s data.brg.cobbler_result

execute if data storage brg:temp root.result.loot_table summon item_display run function brg:block/cobbler/prepare_item/loot_table with storage brg:temp root.result

execute if data storage brg:temp root.result.modifier run function brg:block/cobbler/prepare_item/get_modifier

execute on passengers if entity @s[tag=brg.etched_vase.seed] run function brg:block/cobbler/prepare_item/put
