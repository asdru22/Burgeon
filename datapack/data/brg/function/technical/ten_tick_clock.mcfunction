# Commands to run every ten seconds

# Entities

## All blocks
execute as @e[type=minecraft:item_display,tag=brg.ten_tick_clock] at @s run function brg:entity/technical/ten_tick_clock/item_display

# Reschedule
schedule function brg:technical/ten_tick_clock 10t replace
