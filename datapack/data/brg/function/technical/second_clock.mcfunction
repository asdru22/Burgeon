## Commands to run every second

## All blocks
execute as @e[type=minecraft:item_display,tag=brg.block] at @s run function brg:block/second_clock


# Reschedule
schedule function brg:technical/second_clock 1s replace
