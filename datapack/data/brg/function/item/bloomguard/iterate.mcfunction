# Moves the bloomguard one block

# Begin loop
scoreboard players add @s brg.dummy 1

# Interactions with blocks
execute positioned ^ ^ ^0.05 if predicate brg:location_check/projectile_fire_block if entity @s[tag=!brg.bloomguard.on_fire] run function brg:item/bloomguard/catch_fire


# If bloomguard *doesn't* hit a block, it moves
execute if block ^ ^ ^0.1 #brg:projectile/ignore unless predicate brg:location_check/in_water run tp @s ^ ^ ^0.1
execute if block ^ ^ ^0.1 #brg:projectile/ignore if predicate brg:location_check/in_water run tp @s ^ ^ ^0.05

# Store bloomguard data for pickup and damage UUID commands
data modify storage brg:temp root.bloomguard set from entity @s item.components."minecraft:custom_data".brg

# If bloomguard is on the way back and hits a block, it breaks
execute if entity @s[scores={brg.dummy2=2..}] at @s unless block ^ ^ ^0.1 #brg:projectile/ignore positioned ^ ^ ^-0.5 run function brg:item/bloomguard/pop_into_item

# Entity interactions (damage, teleportation, breaking boats/minecarts)
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#brg:projectile_ignore,dx=0] at @s run function brg:item/bloomguard/entity_interaction/main with storage brg:temp root.bloomguard.macro_input

# Continue loop
execute if entity @s[scores={brg.dummy=1..19}] at @s run function brg:item/bloomguard/iterate
