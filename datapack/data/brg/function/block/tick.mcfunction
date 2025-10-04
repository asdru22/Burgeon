# Functions to run off of every burgeon block every single tick

## Etched Vase
execute if entity @s[tag=brg.etched_vase] run return run function brg:block/etched_vase/tick

## Soul Seer
execute if entity @s[tag=brg.glutted_log] run return run function brg:block/glutted_log/tick
