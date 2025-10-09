# Ticking for etched vases
execute unless block ~ ~ ~ #brg:etched_vase_base run return run function brg:block/etched_vase/break/main

execute if score @s brg.break_hit_timer matches 0.. run function brg:block/etched_vase/break/timer

execute if entity @s[tag=brg.etched_vase.powered] run return run execute if block ~ ~ ~ #brg:etched_vase_base[powered=false] run tag @s remove brg.etched_vase.powered

execute if block ~ ~ ~ #brg:etched_vase_base[powered=true] run function brg:block/etched_vase/powered
