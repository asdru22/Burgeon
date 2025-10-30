execute if block ^ ^ ^-1 minecraft:creaking_heart run function brg:block/spile/extract_goop/main

# if on ground and theres a block behind, change to wall state
execute if entity @s[tag=!brg.spile.wall] if block ^ ^ ^-1 #brg:opaque positioned ~ ~0.25 ~ run return run function brg:block/spile/state/ground_to_wall

# if wall state but no wall behind, turn to ground state
execute if entity @s[tag=brg.spile.wall] unless block ^ ^ ^-1 #brg:opaque run return run function brg:block/spile/state/ground
