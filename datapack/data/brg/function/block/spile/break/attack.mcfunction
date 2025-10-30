# Remove block and spawn loot, then run the break function

setblock ~ ~ ~ air replace
execute if score #drop_item brg.dummy matches 1 run loot spawn ~ ~ ~ loot brg:items/spile
execute if score #drop_item brg.dummy matches 1 on passengers if entity @s[tag=brg.spile_bottle] run function brg:block/spile/drop_bottle

function brg:block/spile/break/main
playsound brg:block.spile.break block @a[distance=..16]
