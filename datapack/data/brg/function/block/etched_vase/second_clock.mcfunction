# Second timer for etched vases
  execute if predicate {condition:random_chance, chance:0.1} if entity @s[scores={brg.seed_age=..15}] if entity @s[tag=brg.etched_vase.has_seed] run function brg:block/etched_vase/grow_seed
