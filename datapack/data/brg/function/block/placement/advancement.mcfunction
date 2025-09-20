# Scans for placed custom blocks

scoreboard players set @s brg.dummy 0
execute store result score @s brg.dummy run attribute @s minecraft:block_interaction_range get 1
scoreboard players add @s brg.dummy 2
execute anchored eyes run function brg:block/placement/raycast
execute as @e[type=minecraft:item_display,tag=brg.newly_placed_update_light] at @s run function brg:block/update_light/on_place
advancement revoke @s only brg:technical/placed_block/custom_block
