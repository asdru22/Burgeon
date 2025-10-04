# Functions to run off of every brg block every ten seconds

## Hopper Prevention
execute if entity @s[tag=brg.prevents_hoppers] positioned ~ ~-1 ~ run function brg:block/hopper_updating/fill
