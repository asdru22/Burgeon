# Makes the pointerpod function

data remove storage brg:temp root
execute if predicate brg:entity_properties/slots/weapon.mainhand/pointerpod run data modify storage brg:temp root.macro_input set value {slot:"weapon.mainhand",slot_raw:"SelectedItem"}
execute unless predicate brg:entity_properties/slots/weapon.mainhand/pointerpod run data modify storage brg:temp root.macro_input set value {slot:"weapon.offhand",slot_raw:"equipment.offhand"}
function brg:item/pointerpod/main_macro with storage brg:temp root.macro_input

playsound brg:item.pointerpod.use player @a[distance=..16]
