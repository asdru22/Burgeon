scoreboard players set #temp_0 brg.dummy 0
function brg:entity/player/heal/main {amount:6000}
particle minecraft:happy_villager ~ ~ ~ 0.25 1 0.25 0.04 8
playsound brg:item.blooming_bulb.heal player @a[distance=..16]
