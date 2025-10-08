# All commands to run involving warped fungi on sticks

# Pointerpods
execute if entity @s[predicate=brg:entity_properties/slots/weapon/pointerpod] if dimension minecraft:overworld run function brg:item/pointerpod/use_item

# Rootsplit sickle
execute if predicate brg:entity_properties/slots/weapon/rootsplit_sickle_generic run function brg:item/rootsplit_sickle/main
