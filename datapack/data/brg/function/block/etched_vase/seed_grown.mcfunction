# Commands to run when a seed grows

execute if function brg:block/etched_vase/cobbler_check on passengers if entity @s[type=interaction] run data modify entity @s height set value 1.6
execute on passengers if entity @s[tag=brg.etched_vase.seed] run item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["age1"],mode:"replace_all"}}
tag @s add brg.etched_vase.seed_grown
