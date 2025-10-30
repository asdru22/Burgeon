# default action
data remove storage brg:temp root.items
data modify storage brg:temp root.items set from entity @s data.brg.cobbler_items

# add item
execute as @p[advancements={brg:technical/player_interacted_with_entity/interaction={interact=true}}] in minecraft:overworld positioned -29999966 0 -29999966 run function brg:block/cobbler/interact/insert_item

# copy back to entity
data modify entity @s data.brg.cobbler_items set from storage brg:temp root.items

function brg:block/cobbler/_check_recipes
