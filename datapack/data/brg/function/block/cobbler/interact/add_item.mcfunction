# use feather to tickle to take items
execute if data storage brg:temp root.item{id:"minecraft:feather"} run return run function brg:block/cobbler/tickle

# default action
data remove storage brg:temp root.items
data modify storage brg:temp root.items set from entity @s data.brg.cobbler_items

# add item
execute as @p[advancements={brg:technical/player_interacted_with_entity/interaction={interact=true}}] in minecraft:overworld positioned -29999966 0 -29999966 run function brg:block/cobbler/interact/insert_item

# copy back to entity
data modify entity @s data.brg.cobbler_items set from storage brg:temp root.items

data remove storage brg:temp root.result
# check recipes
execute in minecraft:overworld positioned -29999966 0 -29999966 run function #brg:cobber_recipes

execute unless data storage brg:temp root.result run return fail

# if there is a matching recipe
# close mouth
item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["closed"],mode:"replace_all"}}
# set vase data
execute on vehicle if entity @s[tag=brg.etched_vase] run function brg:block/cobbler/tag_etched_vase

# reduce count from items
execute positioned -29999966 0 -29999966 run function brg:block/cobbler/reduce_count

