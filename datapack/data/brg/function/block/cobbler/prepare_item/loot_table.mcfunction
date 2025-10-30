$loot replace entity @s contents loot $(loot_table)
data modify storage brg:macro root.result set from entity @s item
kill @s
