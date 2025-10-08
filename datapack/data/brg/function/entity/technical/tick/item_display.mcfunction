# Functions to run off of every burgeon item display every single tick

## Blocks
execute if entity @s[tag=brg.block] run return run function brg:block/tick

## Bloomguard
execute if entity @s[tag=brg.bloomguard] run return run function brg:item/bloomguard/tick

## Scarlet Spore
execute if entity @s[tag=brg.scarlet_spore] run return run function brg:item/scarlet_fang/spore/tick
