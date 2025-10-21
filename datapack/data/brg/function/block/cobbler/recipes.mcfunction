execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{brg:{id:"bean"}}] if items block ~ ~ ~ container.* minecraft:sugar run return run data modify storage brg:temp root.result set value {loot_table:"brg:items/sugarcoated_bean"}

execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{brg:{id:"bean"}}] if items block ~ ~ ~ container.* minecraft:gold_block run return run data modify storage brg:temp root.result set value {loot_table:"brg:items/protobean"}

execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{brg:{id:"intwine"}}] if items block ~ ~ ~ container.* minecraft:crossbow run return run data modify storage brg:temp root.result set value {modifier:"brg:intwine/crossbow",target:{id:"minecraft:crossbow"}}

execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{brg:{id:"intwine"}}] if items block ~ ~ ~ container.* minecraft:goat_horn run return run data modify storage brg:temp root.result set value {function:"brg:item/intertwined/goat_horn/craft",target:{id:"minecraft:goat_horn"}}

execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{brg:{id:"intwine"}}] if items block ~ ~ ~ container.* minecraft:wooden_spear run return run data modify storage brg:temp root.result set value {modifier:"brg:intwine/spear/wooden",target:{id:"minecraft:wooden_spear"}}

execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{brg:{id:"intwine"}}] if items block ~ ~ ~ container.* minecraft:stone_spear run return run data modify storage brg:temp root.result set value {modifier:"brg:intwine/spear/stone",target:{id:"minecraft:stone_spear"}}

execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{brg:{id:"intwine"}}] if items block ~ ~ ~ container.* minecraft:copper_spear run return run data modify storage brg:temp root.result set value {modifier:"brg:intwine/spear/copper",target:{id:"minecraft:copper_spear"}}

execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{brg:{id:"intwine"}}] if items block ~ ~ ~ container.* minecraft:iron_spear run return run data modify storage brg:temp root.result set value {modifier:"brg:intwine/spear/iron",target:{id:"minecraft:iron_spear"}}

execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{brg:{id:"intwine"}}] if items block ~ ~ ~ container.* minecraft:golden_spear run return run data modify storage brg:temp root.result set value {modifier:"brg:intwine/spear/gold",target:{id:"minecraft:golden_spear"}}

execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{brg:{id:"intwine"}}] if items block ~ ~ ~ container.* minecraft:diamond_spear run return run data modify storage brg:temp root.result set value {modifier:"brg:intwine/spear/diamond",target:{id:"minecraft:diamond_spear"}}

execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{brg:{id:"intwine"}}] if items block ~ ~ ~ container.* minecraft:netherite_spear run return run data modify storage brg:temp root.result set value {modifier:"brg:intwine/spear/netherite",target:{id:"minecraft:netherite_spear"}}
