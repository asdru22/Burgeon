# Targets entities within macroed distance

$execute as @e[type=minecraft:item_display,distance=..$(distance),tag=brg.prevents_hoppers] at @s positioned ~ ~-1 ~ run function brg:block/hopper_updating/fill

