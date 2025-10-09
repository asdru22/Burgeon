# get number of rootsplit sickles that are consumable
execute store result score #temp_0 brg.dummy if items entity @s weapon.* *[minecraft:consumable,minecraft:custom_data~{brg:{id:"rootsplit_sickle"}}]

# get number of rootsplit sickles
execute store result score #temp_1 brg.dummy if items entity @s weapon.* *[minecraft:custom_data~{brg:{id:"rootsplit_sickle"}}]

## temp_1 >= temp_0

## temp_1 == 2 && temp_0 == 1 ok
## temp_1 == 0 && temp_0 == 0 ok
## temp_1 == 1 && temp_0 == 0 ok

# no consumable when holding two rss
execute if score #temp_1 brg.dummy matches 2 if score #temp_0 brg.dummy matches 0 run return run item modify entity @s weapon.mainhand brg:rootsplit_sickle/set_consumable

# holding one consumable rss
execute if score #temp_1 brg.dummy matches 1 if score #temp_0 brg.dummy matches 1 run return run function brg:item/rootsplit_sickle/check_one

# two with components and holding two rss, then just remove compoent from offhand
execute if score #temp_1 brg.dummy matches 2 if score #temp_0 brg.dummy matches 2 run return run item modify entity @s weapon.offhand brg:rootsplit_sickle/remove_consumable
