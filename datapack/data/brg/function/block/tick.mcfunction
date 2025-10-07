# Functions to run off of every burgeon block every single tick

## Etched Vase
execute if entity @s[tag=brg.etched_vase] run return run function brg:block/etched_vase/tick

## Glutted Log
execute if entity @s[tag=brg.glutted_log] run return run function brg:block/glutted_log/tick

## Murky Crevice
execute if entity @s[tag=brg.murky_crevice] run return run function brg:block/murky_crevice/tick

## Murky Crevice Claw
execute if entity @s[tag=brg.murky_crevice_claw] run return run function brg:block/murky_crevice/claw/tick
