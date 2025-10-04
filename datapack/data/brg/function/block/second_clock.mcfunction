# Functions to run off of every burgeon block every second

## Decorated Pot
execute if entity @s[tag=brg.etched_vase] run return run function brg:block/etched_vase/second_clock

## Prevent Darkening
execute if entity @s[tag=!brg.glow_in_the_dark] run function brg:block/update_light/main
