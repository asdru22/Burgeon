data remove storage brg:macro root
#get half damage
$execute store result storage brg:macro root.damage double 0.5 run data get entity @s $(slot_raw).components."minecraft:damage"

#copy item to other slot
$item replace entity @s $(other) from entity @s $(slot)

#apply modifier to slot
$item modify entity @s $(slot) brg:rootsplit_sickle/split
#apply damage to slot
$data modify storage brg:macro root.slot set value "$(slot)"
function brg:technical/macros/damage_slot/damage with storage brg:macro root

#apply modifier to other
$item modify entity @s $(other) brg:rootsplit_sickle/split
#apply damage to slot
$data modify storage brg:macro root.slot set value "$(other)"
function brg:technical/macros/damage_slot/damage with storage brg:macro root
