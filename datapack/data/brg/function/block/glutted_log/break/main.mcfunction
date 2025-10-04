# Commands to break a soul seer

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":{"font":"brg:technical","translate":"block.brg.glutted_log.name"}},id:"minecraft:barrel"}}] at @s run function brg:block/glutted_log/break/kill_item
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{brg:{clear:1b}}}}}]
function brg:block/break_particles/spawn_generic
kill @s
function brg:block/hopper_updating/undo
