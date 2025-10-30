# Functions to run off of every burgeon item display every single tick

## Blocks
execute if entity @s[tag=brg.block] run return run function brg:block/tick

## Bloomguard
execute if entity @s[tag=brg.bloomguard] run return run function brg:item/bloomguard/tick

## Scarlet Spore
execute if entity @s[tag=brg.scarlet_spore] run return run function brg:item/scarlet_fang/spore/tick

## Bursting Blossom
execute if entity @s[tag=brg.bursting_blossom] run return run function brg:entity/bursting_blossom/tick

## Bursting Blossom Petal
execute if entity @s[tag=brg.bursting_blossom_petal] run return run function brg:entity/bursting_blossom/petal/tick
