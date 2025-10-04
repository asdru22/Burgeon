# Commands to update a bloomguard once every tick

scoreboard players operation #temp_0 brg.dummy = @s brg.dummy2
scoreboard players operation #temp_0 brg.dummy %= #3 brg.dummy
scoreboard players operation #temp_1 brg.dummy = @s brg.dummy2
scoreboard players operation #temp_1 brg.dummy %= #12 brg.dummy


# Rotate the bloomguard
execute if score #temp_1 brg.dummy matches 0 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:0.0f}}}
execute if score #temp_1 brg.dummy matches 3 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:-1.57079632679f}}}
execute if score #temp_1 brg.dummy matches 6 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:-3.141f}}}
execute if score #temp_1 brg.dummy matches 9 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:-4.71238898038f}}}

# Play water particles
execute if predicate brg:location_check/in_water run particle minecraft:bubble ~ ~ ~ 0.4 0.1 0.4 0 1
