execute if data storage brg:temp root.item{id:"minecraft:dirt"} run return run data modify block ~ ~ ~ profile.texture set value "brg:block/etched_vase_soil/dirt"
execute if data storage brg:temp root.item{id:"minecraft:mud"} run return run data modify block ~ ~ ~ profile.texture set value "brg:block/etched_vase_soil/mud"
execute if data storage brg:temp root.item{id:"minecraft:pale_oak_log"} run return run data modify block ~ ~ ~ profile.texture set value "brg:block/etched_vase_soil/pale_oak_log"

return fail
