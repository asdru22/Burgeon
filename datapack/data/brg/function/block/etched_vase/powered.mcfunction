execute if entity @s[tag=!brg.etched_vase.has_seed] run return fail
# Commands to run if a powered etched vase has a seed
scoreboard players set #powered brg.dummy 1
function brg:block/etched_vase/reset_seed_data

playsound brg:block.etched_vase.drop block @a[distance=..16]
tag @s add brg.etched_vase.powered
