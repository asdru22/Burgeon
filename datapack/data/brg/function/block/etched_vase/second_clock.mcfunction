# clock for when making etched vase item
execute if entity @s[tag=brg.etched_vase.cobbler_recipe] run return run function brg:block/cobbler/prepare_item/main

# Second timer for etched vases
execute if predicate [{condition:"minecraft:location_check",predicate:{can_see_sky:1b}},{condition:"random_chance",chance:0.06}] if entity @s[tag=brg.etched_vase.has_seed, tag=!brg.etched_vase.seed_grown] run function brg:block/etched_vase/grow_seed
