scoreboard players add @s brg.seed_age 1

execute if predicate {condition:random_chance, chance:0.2} if items entity @a[distance=..16] armor.head *[minecraft:custom_data~{brg:{id:"straw_hat"}}] run scoreboard players add @s brg.seed_age 1

execute if score @s brg.seed_age matches 15.. on passengers if entity @s[tag=brg.etched_vase.seed] run item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["age1"],mode:"replace_all"}}
