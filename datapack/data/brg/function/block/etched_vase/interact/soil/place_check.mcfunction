# Set the right soil given the item

execute if data storage brg:temp root.item{id:"minecraft:dirt"} run return run data modify block ~ ~ ~ profile.texture set value "brg:block/etched_vase_soil/dirt"
execute if data storage brg:temp root.item{id:"minecraft:mud"} run return run data modify block ~ ~ ~ profile.texture set value "brg:block/etched_vase_soil/mud"
execute if data storage brg:temp root.item{id:"minecraft:pale_oak_log"} run return run data modify block ~ ~ ~ profile.texture set value "brg:block/etched_vase_soil/pale_oak_log"
execute if data storage brg:temp root.item{id:"minecraft:moss_block"} run return run data modify block ~ ~ ~ profile.texture set value "brg:block/etched_vase_soil/moss_block"
execute if data storage brg:temp root.item{id:"minecraft:soul_soil"} run return run data modify block ~ ~ ~ profile.texture set value "brg:block/etched_vase_soil/soul_soil"
execute if data storage brg:temp root.item{id:"minecraft:sand"} run return run data modify block ~ ~ ~ profile.texture set value "brg:block/etched_vase_soil/sand"

return fail
