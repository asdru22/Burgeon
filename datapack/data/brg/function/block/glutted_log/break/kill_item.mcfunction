# Kills item for glutted log

execute store result score #count brg.dummy run data get entity @s Item.count
loot replace entity @s contents loot brg:blocks/glutted_log
