setblock ~ ~ ~ air replace
loot spawn ~ ~ ~ loot brg:items/etched_vase
function brg:block/etched_vase/break/main
playsound brg:block.etched_vase.break block @a[distance=..16]
