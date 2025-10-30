$loot replace entity @s contents loot $(result)
item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["age1"],mode:"replace_all"}}
