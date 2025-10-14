# Remove block and spawn loot, then run the break function

setblock ~ ~ ~ air replace
execute if score #drop_item brg.dummy matches 1 run loot spawn ~ ~ ~ loot brg:items/spile
function brg:block/spile/break/main
playsound brg:block.spile.break block @a[distance=..16]
