# Commands to run every ten seconds

# Entities


## All blocks
execute as @e[type=minecraft:item_display,tag=brg.block] at @s run function brg:block/ten_second_clock

# Reschedule
schedule function brg:technical/ten_second_clock 10s replace
