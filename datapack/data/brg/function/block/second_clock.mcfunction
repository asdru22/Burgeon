# Functions to run off of every burgeon block every second

## Prevent Darkening
execute if entity @s[tag=!brg.glow_in_the_dark,tag=!brg.nonsolid_base] run function brg:block/update_light/main


## Decorated Pot
execute if entity @s[tag=brg.etched_vase] run return run function brg:block/etched_vase/second_clock

## Glutted Log
execute if entity @s[tag=brg.glutted_log] run return run function brg:block/glutted_log/second_clock

## Murky Crevice
execute if entity @s[tag=brg.murky_crevice] run return run function brg:block/murky_crevice/second_clock
