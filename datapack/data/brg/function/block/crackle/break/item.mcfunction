# Set the correct amount of etched vases
execute store result score #count brg.dummy run data get entity @s Item.count
loot replace entity @s contents loot brg:blocks/crackle

execute on passengers if entity @s[tag=brg.crackle_item] run function brg:block/crackle/drop_item
