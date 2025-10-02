# Ticking for etched vases
execute unless block ~ ~ ~ #brg:etched_vase_base run return run function brg:block/etched_vase/break/main

execute if score @s brg.break_hit_timer matches 0.. run function brg:block/etched_vase/break/timer
