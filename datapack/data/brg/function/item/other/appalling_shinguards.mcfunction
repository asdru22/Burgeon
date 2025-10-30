scoreboard players set #temp_0 brg.dummy 0
# get armor
tag @s add brg.temp
execute as @e[distance=..20] on target if entity @s[tag=brg.temp] run scoreboard players add #temp_0 brg.dummy 15
tag @s remove brg.temp

# allowed interval
scoreboard players operation #temp_0 brg.dummy < #80 brg.dummy
scoreboard players operation #temp_0 brg.dummy > #5 brg.dummy

execute if score #temp_0 brg.dummy matches 80 run advancement grant @s only brg:burgeon/appalling_shinguards_max_armor

item modify entity @s armor.legs brg:appalling_shinguards_armor
