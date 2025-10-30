# Commands to break a murky crevice

kill @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":{"font":"brg:technical","translate":"block.brg.glutted_log.name"}},id:"minecraft:blast_furnace"}}]
function brg:block/break_particles/spawn_generic
kill @s
function brg:block/hopper_updating/undo
