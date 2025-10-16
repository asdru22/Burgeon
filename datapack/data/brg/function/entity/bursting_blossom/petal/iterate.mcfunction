# Moves the petal one block

execute unless block ^ ^ ^0.1 #brg:projectile/ignore run return run function brg:entity/bursting_blossom/petal/kill

particle dust{color:65514,scale:0.75} ~ ~ ~

# Begin loop
scoreboard players add @s brg.dummy 1

# Interactions with blocks
execute positioned ^ ^ ^0.05 if predicate brg:location_check/projectile_fire_block run function brg:entity/bursting_blossom/petal/kill

# If petal *doesn't* hit a block, it moves
execute if block ^ ^ ^0.1 #brg:projectile/ignore unless predicate brg:location_check/in_water run tp @s ^ ^ ^0.05
execute if block ^ ^ ^0.1 #brg:projectile/ignore if predicate brg:location_check/in_water run function brg:entity/bursting_blossom/petal/kill

# Store petal data for pickup and damage UUID commands
data modify storage brg:temp root.bursting_blossom_petal set from entity @s data.brg

# Entity interactions (damage, teleportation, breaking boats/minecarts)
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#brg:projectile_ignore,dx=0] at @s run function brg:entity/bursting_blossom/petal/entity_interaction with storage brg:temp root.bursting_blossom_petal

# Continue loop
execute if entity @s[scores={brg.dummy=1..19}] at @s run function brg:entity/bursting_blossom/petal/iterate
