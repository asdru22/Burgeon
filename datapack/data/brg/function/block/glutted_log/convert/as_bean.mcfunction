# consume a bean and return success

item modify entity @s contents brg:reduce_count
particle cloud
data remove storage brg:macro root
data modify storage brg:macro root.owner set from entity @s Thrower
return 1
