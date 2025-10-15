execute if entity @s[tag=!brg.spile.bottle] run return run execute positioned ^ ^ ^0.25 positioned ~ ~-0.1 ~ run particle minecraft:dripping_lava ~ ~ ~ 0 0 0 0 1


execute unless predicate brg:random_chance/0.05 run return fail
# There is a 5% chance this code will be ran

execute on passengers if entity @s[tag=brg.spile_bottle] run function brg:block/spile/extract_goop/fill_bottle

# 5% chance to consume log
execute if predicate brg:random_chance/0.05 run setblock ^ ^ ^-1 pale_oak_log[axis=y]
