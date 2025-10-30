data remove storage brg:temp root
data modify storage brg:temp root.uuid set from entity @n[type=arrow] Owner

execute positioned ~ ~0.2 ~ summon item_display run function brg:item/intertwined/crossbow/as_item_display

execute on attacker if entity @s[gamemode=!creative] run function brg:item/intertwined/crossbow/as_shooter
