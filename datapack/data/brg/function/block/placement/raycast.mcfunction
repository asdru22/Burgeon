# Scans for placed custom blocks

execute align xyz positioned ~0.5 ~ ~0.5 run function brg:block/placement/check_blocks
scoreboard players remove @s brg.dummy 1
execute if score @s brg.dummy matches 1.. positioned ^ ^ ^1 run function brg:block/placement/raycast
