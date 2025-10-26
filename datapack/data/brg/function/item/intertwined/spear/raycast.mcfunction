scoreboard players add #temp_0 brg.dummy 2

execute positioned ~-0.4 ~-0.4 ~-0.4 as @e[type=!#brg:projectile_ignore,dx=0] at @s run function brg:item/intertwined/spear/entity_interaction with storage brg:macro root

execute if score #temp_0 brg.dummy matches ..20 positioned ^ ^ ^0.2 run function brg:item/intertwined/spear/raycast
