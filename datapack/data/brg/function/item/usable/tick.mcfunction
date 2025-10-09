# impl
execute if score @s brg.using_item = @s brg.using_item_prev run function brg:item/usable/release
scoreboard players operation @s brg.using_item_prev = @s brg.using_item

execute if score @s brg.using_item matches 30.. if predicate brg:entity_properties/slots/weapon/rootsplit_sickle/all run return run function brg:item/rootsplit_sickle/combine
