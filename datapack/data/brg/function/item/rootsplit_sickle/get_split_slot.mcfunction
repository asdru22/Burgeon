playsound brg:item.rootsplit_sickle.separate player @a[distance=..16]

execute if predicate brg:entity_properties/slots/weapon.mainhand/rootsplit_sickle_combined run return run function brg:item/rootsplit_sickle/split {slot:"weapon.mainhand",slot_raw:"SelectedItem", other: "weapon.offhand"}
execute if predicate brg:entity_properties/slots/weapon.offhand/rootsplit_sickle_combined run return run function brg:item/rootsplit_sickle/split {slot:"weapon.offhand","slot_raw": "equipment.offhand",other:"weapon.mainhand"}
