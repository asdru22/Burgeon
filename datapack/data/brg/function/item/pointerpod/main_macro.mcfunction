# Runs proper commands based on given slot and raw slot

# Put base item in storage
$data modify storage brg:temp root.item set from entity @s $(slot_raw)
$data modify storage brg:temp root.item.slot set value '$(slot)'
# Put the stored item in storage
data modify storage brg:temp root.stored_item set from storage brg:temp root.item

# Replace mainhand with map and then bring back what was previously in that slot
$loot replace entity @s $(slot) loot brg:technical/map/pointerpod
$data modify storage brg:temp root.map set from entity @s $(slot_raw)
function brg:technical/macros/loot/replace with storage brg:temp root.stored_item

# Edit item stored in temp
data merge storage brg:temp {root:{item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:lodestone_tracker":{target:{pos:[0,7,0],dimension:"minecraft:overworld"},tracked:0b},"!minecraft:consumable":{}}}}}
execute store result storage brg:temp root.item.components."minecraft:lodestone_tracker".target.pos[0] int 1.0 run data get storage brg:temp root.map.components."minecraft:map_decorations".+.x
execute store result storage brg:temp root.item.components."minecraft:lodestone_tracker".target.pos[2] int 1.0 run data get storage brg:temp root.map.components."minecraft:map_decorations".+.z

# Invalid lodestone tracker if map finds nothing
execute unless data storage brg:temp root.map{id:"minecraft:filled_map"} run data remove storage brg:temp root.item.components."minecraft:lodestone_tracker".target

# Advancement
advancement grant @s only brg:burgeon/use_pointerpod

# Give self the actual pointerpod item & reduce mainhand count
$item modify entity @s[gamemode=!creative] $(slot) brg:reduce_count
$execute unless data entity @s $(slot_raw) run return run function brg:technical/macros/loot/replace with storage brg:temp root.item
execute unless predicate brg:entity_properties/full_inventory run return run function brg:technical/macros/loot/give with storage brg:temp root.item
function brg:technical/macros/loot/spawn with storage brg:temp root.item
