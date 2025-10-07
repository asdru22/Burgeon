data remove storage brg:macro root.item
execute on passengers run data modify storage brg:macro root.item set from entity @s item
execute on passengers run kill

function brg:technical/macros/loot/spawn with storage brg:macro root.item
data merge entity @s {teleport_duration:15}
tp @s ^ ^ ^-1.1
