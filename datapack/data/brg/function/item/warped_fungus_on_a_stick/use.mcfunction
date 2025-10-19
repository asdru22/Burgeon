# All commands to run involving warped fungi on sticks

# Pointerpods
execute if entity @s[predicate=brg:entity_properties/slots/weapon/pointerpod] if dimension minecraft:overworld run function brg:item/pointerpod/use_item

# Seedbook
execute if entity @s[predicate=brg:entity_properties/slots/weapon/seedbook] run function brg:item/seedbook/open
# Damp Notes
execute if entity @s[predicate=brg:entity_properties/slots/weapon/damp_notes] run dialog show @s brg:damp_notes/0
# Scarlet Fang
execute if entity @s[predicate=brg:entity_properties/slots/weapon/scarlet_fang,nbt={HurtTime:0s}] run function brg:item/scarlet_fang/main
