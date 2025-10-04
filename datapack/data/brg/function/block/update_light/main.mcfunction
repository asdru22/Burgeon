# Functions to update light levels for a custom block

data remove entity @s brightness
scoreboard players set #temp_0 brg.dummy 0
execute if block ~ ~ ~ #brg:opaque align xyz positioned ~ ~-0.5 ~ run function brg:block/update_light/edit_brightness
