data modify storage brg:temp root.items set from entity @s data.brg.cobbler_items

execute unless data storage brg:temp root.items[] run return fail

data modify storage brg:temp root.item set from storage brg:temp root.items[-1]
data remove storage brg:temp root.items[-1]

data modify entity @s data.brg.cobbler_items set from storage brg:temp root.items
execute positioned ~ ~0.8 ~ run function brg:technical/macros/spawn_item with storage brg:temp root
