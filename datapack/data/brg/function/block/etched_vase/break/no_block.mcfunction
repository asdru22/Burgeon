execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..5,nbt={Item:{components:{"minecraft:profile":{id:[I;66,0,0,1]}},id:"minecraft:player_head"}}] run function brg:block/etched_vase/break/item

function brg:block/etched_vase/break/main

playsound brg:block.etched_vase.break block @a[distance=..16]
