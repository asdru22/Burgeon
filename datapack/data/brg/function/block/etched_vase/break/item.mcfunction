# Set the correct amount of etched vases
execute store result score #count brg.dummy run data get entity @s Item.count
loot replace entity @s contents loot brg:blocks/etched_vase
