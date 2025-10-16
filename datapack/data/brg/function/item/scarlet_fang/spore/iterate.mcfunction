# Moves the spore one block
particle dust{color:[0.761,0.196,0.082],scale:0.5} ~ ~-0.2 ~ 0 0 0 0 1 normal

# Begin loop
scoreboard players add @s brg.dummy 1

# Interactions with blocks
execute positioned ^ ^ ^0.05 if predicate brg:location_check/projectile_fire_block run function brg:item/scarlet_fang/spore/kill

# If spore *doesn't* hit a block, it moves
execute if block ^ ^ ^0.1 #brg:projectile/ignore unless predicate brg:location_check/in_water run tp @s ^ ^ ^0.025
execute if block ^ ^ ^0.1 #brg:projectile/ignore if predicate brg:location_check/in_water run tp @s ^ ^ ^0.01

# Store spore data for pickup and damage UUID commands
data modify storage brg:temp root.scarlet_spore set from entity @s item.components."minecraft:custom_data".brg

# Entity interactions (damage, teleportation, breaking boats/minecarts)
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#brg:projectile_ignore,dx=0] at @s run function brg:item/scarlet_fang/spore/entity_interaction with storage brg:temp root.scarlet_spore.macro_input

# Continue loop
execute if entity @s[scores={brg.dummy=1..19}] at @s run function brg:item/scarlet_fang/spore/iterate
