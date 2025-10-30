# Commands ran to grow seed
scoreboard players add @s brg.seed_age 1

# Straw hats passive effect
execute if predicate {condition:random_chance, chance:0.2} if items entity @a[distance=..16] armor.head *[minecraft:custom_data~{brg:{id:"straw_hat"}} | minecraft:custom_data~{"cnk":{"straw_hat":true}}] run scoreboard players add @s brg.seed_age 1


execute store result score #temp_0 brg.dummy run data get entity @s item.components."minecraft:custom_data".brg.stage

execute if score @s brg.seed_age >= #temp_0 brg.dummy run function brg:block/etched_vase/seed_grown
