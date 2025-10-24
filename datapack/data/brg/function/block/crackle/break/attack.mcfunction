# Remove block and spawn loot, then run the break function

setblock ~ ~ ~ air replace
execute if score #drop_item brg.dummy matches 1 run loot spawn ~ ~ ~ loot brg:items/crackle
execute if score #drop_item brg.dummy matches 1 on passengers if entity @s[tag=brg.crackle_item] run function brg:block/crackle/drop_item

function brg:block/crackle/break/main
playsound brg:block.crackle.break block @a[distance=..16]
