# Functions to run every single tick

## Entity Ticking

### Item displays
execute as @e[type=minecraft:item_display,tag=brg.item_display] at @s run function brg:entity/technical/tick/item_display

### Player
execute as @a at @s run function brg:entity/player/tick/main
