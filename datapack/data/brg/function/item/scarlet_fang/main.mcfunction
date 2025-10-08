playsound brg:item.scarlet_fang.use player @a[distance=..16]

damage @s 4 brg:scarlet_fang

data remove storage brg:temp root
data modify storage brg:temp root.scarlet_spore.UUID set from entity @s UUID

execute anchored eyes positioned ^ ^ ^ summon minecraft:item_display run function brg:item/scarlet_fang/spore/initiate

execute if entity @s[gamemode=creative] run return 0

execute if predicate brg:entity_properties/slots/weapon.mainhand/scarlet_fang run return run function brg:technical/macros/damage_slot/main {slot:"weapon.mainhand",slot_raw:"SelectedItem", amount:1}


execute if predicate brg:entity_properties/slots/weapon.offhand/scarlet_fang run return run function brg:technical/macros/damage_slot/main {slot:"weapon.offhand",slot_raw:"equipment.offhand", amount:1}
