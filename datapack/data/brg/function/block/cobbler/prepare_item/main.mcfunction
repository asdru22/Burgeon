execute if predicate brg:random_chance/0.5 run scoreboard players add @s brg.seed_age 1

execute if score @s brg.seed_age matches ..9 run return fail

# when recipe is ready
tag @s remove brg.etched_vase.cobbler_recipe
data remove storage brg:macro root
data modify storage brg:macro root.result set from entity @s data.brg.cobbler_result
execute on passengers if entity @s[tag=brg.etched_vase.seed] run function brg:block/cobbler/prepare_item/put
