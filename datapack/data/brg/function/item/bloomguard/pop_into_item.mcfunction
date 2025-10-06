# Commands for the bloomguard hitting a block and breaking

data modify storage brg:temp root.item set from entity @s item.components."minecraft:custom_data".brg.item
execute if predicate brg:random_chance/0.1 unless data entity @s item.components."minecraft:custom_data".brg{gamemode:1} run function brg:technical/macros/loot/spawn with storage brg:temp root.item
playsound brg:item.bloomguard.break player @a[distance=..64] ~ ~ ~ 4 1
execute if entity @s[tag=brg.bloomguard.on_fire] on passengers run kill @s
kill @s
data merge storage brg:temp {root:{dx:0.2,dy:0.2,dz:0.2,speed:0.07,count:10}}
function brg:block/break_particles/macro with storage brg:temp root
