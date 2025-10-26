data remove storage brg:temp root
data modify storage brg:temp root.rotation set from entity @s Rotation
data modify storage brg:temp root.UUID set from entity @s UUID
execute positioned ~ ~-0.4 ~ anchored eyes positioned ^ ^ ^0.8 summon item_display run function brg:item/intertwined/spear/as_item_display

function brg:technical/macros/damage_slot/main {slot:"weapon.mainhand",amount:3,slot_raw:"SelectedItem"}

playsound brg:entity.intertwined_spear_thorn block @a[distance=..16]
