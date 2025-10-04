# Kills item for soul seer

execute store result score #count brg.dummy run data get entity @s Item.count
loot replace entity @s contents loot brg:blocks/glutted_log
