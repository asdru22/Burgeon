data remove storage brg:temp root
data modify storage brg:temp root.item set from entity @s Item
data modify storage brg:temp root.owner set from entity @s Thrower
item modify entity @s contents brg:reduce_count
return 1
