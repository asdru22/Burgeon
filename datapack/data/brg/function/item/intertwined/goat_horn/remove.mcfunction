data remove storage brg:macro root

$data modify storage brg:macro root.item set from entity @s $(slot_raw)
$data modify storage brg:macro root.item.slot set value "$(slot)"
data modify storage brg:macro root.item.id set value "minecraft:goat_horn"

# default name
data remove storage brg:macro root.item.components."minecraft:item_name"
data remove storage brg:macro root.item.components."minecraft:rarity"

# restore instrument
data modify storage brg:macro root.item.components."minecraft:instrument" set from storage brg:macro root.item.components."minecraft:custom_data".brg.instrument

# remove custom data
data remove storage brg:macro root.item.components."minecraft:custom_data".brg
# reset model
data remove storage brg:macro root.item.components."minecraft:item_model"

# default components
execute unless data storage brg:macro root.item.components run data modify storage brg:macro root.item.components set value {}

function brg:technical/macros/loot/replace with storage brg:macro root.item
