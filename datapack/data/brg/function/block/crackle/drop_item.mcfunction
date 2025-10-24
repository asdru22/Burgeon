data modify storage brg:macro root.item set from entity @s item

execute positioned ~ ~0.4 ~ run function brg:technical/macros/spawn_item with storage brg:macro root

execute on vehicle run function brg:block/crackle/drop_item_as_crackle
kill @s
