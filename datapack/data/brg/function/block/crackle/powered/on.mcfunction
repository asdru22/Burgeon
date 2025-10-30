item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["powered"],mode:"replace_all"}}
scoreboard players set @s brg.dummy2 2
execute on passengers if entity @s[tag=brg.crackle_item] run function brg:block/crackle/drop_item
