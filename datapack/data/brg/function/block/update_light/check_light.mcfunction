# Functions to update light levels for a custom block

execute unless score #temp_0 brg.dummy matches 1.. if predicate brg:location_check/light/0 run scoreboard players set #temp_0 brg.dummy 0
execute unless score #temp_0 brg.dummy matches 2.. if predicate brg:location_check/light/1 run scoreboard players set #temp_0 brg.dummy 1
execute unless score #temp_0 brg.dummy matches 3.. if predicate brg:location_check/light/2 run scoreboard players set #temp_0 brg.dummy 2
execute unless score #temp_0 brg.dummy matches 4.. if predicate brg:location_check/light/3 run scoreboard players set #temp_0 brg.dummy 3
execute unless score #temp_0 brg.dummy matches 5.. if predicate brg:location_check/light/4 run scoreboard players set #temp_0 brg.dummy 4
execute unless score #temp_0 brg.dummy matches 6.. if predicate brg:location_check/light/5 run scoreboard players set #temp_0 brg.dummy 5
execute unless score #temp_0 brg.dummy matches 7.. if predicate brg:location_check/light/6 run scoreboard players set #temp_0 brg.dummy 6
execute unless score #temp_0 brg.dummy matches 8.. if predicate brg:location_check/light/7 run scoreboard players set #temp_0 brg.dummy 7
execute unless score #temp_0 brg.dummy matches 9.. if predicate brg:location_check/light/8 run scoreboard players set #temp_0 brg.dummy 8
execute unless score #temp_0 brg.dummy matches 10.. if predicate brg:location_check/light/9 run scoreboard players set #temp_0 brg.dummy 9
execute unless score #temp_0 brg.dummy matches 11.. if predicate brg:location_check/light/10 run scoreboard players set #temp_0 brg.dummy 10
execute unless score #temp_0 brg.dummy matches 12.. if predicate brg:location_check/light/11 run scoreboard players set #temp_0 brg.dummy 11
execute unless score #temp_0 brg.dummy matches 13.. if predicate brg:location_check/light/12 run scoreboard players set #temp_0 brg.dummy 12
execute unless score #temp_0 brg.dummy matches 14.. if predicate brg:location_check/light/13 run scoreboard players set #temp_0 brg.dummy 13
execute unless score #temp_0 brg.dummy matches 15.. if predicate brg:location_check/light/14 run scoreboard players set #temp_0 brg.dummy 14
execute if predicate brg:location_check/light/15 run scoreboard players set #temp_0 brg.dummy 15
