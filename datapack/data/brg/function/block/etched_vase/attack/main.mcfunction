# Handle attack events 
execute if entity @s[tag=brg.etched_vase.has_seed] run return run function brg:block/etched_vase/attack/reset_seed_data

execute if entity @s[tag=brg.etched_vase.has_soil,tag=!brg.etched_vase.has_seed] run return run function brg:block/etched_vase/attack/return_soil

execute if entity @s[tag=!brg.etched_vase.has_soil,tag=!brg.etched_vase.has_seed] run function brg:block/etched_vase/attack/start_timer
