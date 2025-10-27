$data modify storage brg:macro root.item set from entity @s $(slot_raw)
execute unless data storage brg:macro root.item.components run data modify storage brg:macro root.item.components set value {}
$data modify storage brg:macro root.item.slot set value "$(slot)"
$item replace entity @s $(slot) with stone
function brg:technical/macros/loot/replace with storage brg:macro root.item
