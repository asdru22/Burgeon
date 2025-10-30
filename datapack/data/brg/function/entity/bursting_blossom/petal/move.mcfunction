# Store petal data for damage UUID commands
data modify storage brg:temp root.bursting_blossom_petal set from entity @s data.brg

scoreboard players set @s brg.dummy 0
function brg:entity/bursting_blossom/petal/iterate
scoreboard players add @s brg.dummy2 1
execute if predicate brg:location_check/in_water run function brg:entity/bursting_blossom/petal/kill
