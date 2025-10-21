execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{brg:{id:"bean"}}] if items block ~ ~ ~ container.* minecraft:sugar run return run data modify storage brg:temp root.result set value {loot_table:"brg:items/sugarcoated_bean"}

execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{brg:{id:"bean"}}] if items block ~ ~ ~ container.* minecraft:gold_block run return run data modify storage brg:temp root.result set value {loot_table:"brg:items/protobean"}

execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{brg:{id:"intwine"}}] if items block ~ ~ ~ container.* minecraft:crossbow run return run data modify storage brg:temp root.result set value {modifier:"brg:intwine/crossbow",target:{id:"minecraft:crossbow"}}
