data modify entity @s item set from storage brg:temp root.target
$item modify entity @s contents $(modifier)
data modify storage brg:macro root.result set from entity @s item
kill @s
