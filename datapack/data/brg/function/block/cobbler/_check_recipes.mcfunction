data remove storage brg:temp root.result
# check recipes

execute in minecraft:overworld positioned -29999966 0 -29999966 run function #brg:cobber_recipes

execute unless data storage brg:temp root.result run return fail

# if there is a matching recipe
# close mouth
item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["closed"],mode:"replace_all"}}
# set vase data
execute on vehicle if entity @s[tag=brg.etched_vase] run function brg:block/cobbler/tag_etched_vase

# special crafting
execute if data storage brg:temp root.result.modifier on vehicle if entity @s[tag=brg.etched_vase] run function brg:block/cobbler/modifier_recipe with storage brg:temp root.result

# reduce count from items
execute positioned -29999966 0 -29999966 run function brg:block/cobbler/reduce_count
