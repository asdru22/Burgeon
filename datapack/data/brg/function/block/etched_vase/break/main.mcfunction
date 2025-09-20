# Commands to break an etched vase

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..5,nbt={Item:{components:{"minecraft:profile":{id:[I;66,0,0,1]}},id:"minecraft:player_head"}}] run function brg:block/etched_vase/break/item

function brg:block/break_particles/spawn_vase

execute if entity @s[tag=brg.etched_vase.has_soil] run function brg:block/etched_vase/break/drop_soil with entity @s item.components."minecraft:custom_data".brg

execute on passengers run kill
kill @s
