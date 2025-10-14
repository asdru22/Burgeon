# Remove block and spawn loot, then run the break function

setblock ~ ~ ~ air replace
execute if score #drop_item brg.dummy matches 1 run loot spawn ~ ~ ~ loot brg:items/etched_vase
function brg:block/etched_vase/break/main
playsound brg:block.etched_vase.break block @a[distance=..16]
