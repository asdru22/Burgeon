scoreboard players set @s brg.dummy 0
function brg:item/scarlet_fang/spore/iterate
scoreboard players add @s brg.dummy2 1

execute if predicate brg:location_check/in_water run particle minecraft:bubble ~ ~ ~ 0.4 0.1 0.4 0 1
