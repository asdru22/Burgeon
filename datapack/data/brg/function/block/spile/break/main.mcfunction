# Commands to break a spile

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..5,nbt={Item:{components:{"minecraft:profile":{id:[I;66,0,0,2]}},id:"minecraft:player_head"}}] run function brg:block/spile/break/item

particle item{item:{id:"minecraft:player_head",components:{item_model:"brg:block/spile"}}} ^ ^ ^-0.2 0 0.1 0 0.1 20 normal

execute on passengers run kill
kill @s
