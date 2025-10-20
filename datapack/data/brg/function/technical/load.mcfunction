## Adds all scoreboards and sets up everything

# Use for single-tick operations
scoreboard objectives add brg.dummy dummy

# Use for operations that span multiple ticks
scoreboard objectives add brg.dummy2 dummy

# Scoreboards
scoreboard objectives add brg.seed_age dummy
scoreboard objectives add brg.used_warped_fungus_on_a_stick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add brg.break_hit_count dummy
scoreboard objectives add brg.break_hit_timer dummy
scoreboard objectives add brg.heal dummy
scoreboard objectives add brg.consumed_beans dummy
scoreboard objectives add brg.using_item dummy
scoreboard objectives add brg.using_item_prev dummy
scoreboard objectives add brg.seedbook_page dummy
scoreboard objectives add brg.seedbook trigger
## Gamerules
gamerule logAdminCommands false
gamerule commandBlockOutput false

## Constants
scoreboard players set #0 brg.dummy 0
scoreboard players set #1 brg.dummy 1
scoreboard players set #2 brg.dummy 2
scoreboard players set #3 brg.dummy 3
scoreboard players set #5 brg.dummy 5
scoreboard players set #12 brg.dummy 12
scoreboard players set #80 brg.dummy 80

function brg:item/seedbook/load
execute positioned -29999966 0 -29999966 run function brg:technical/forceload_chunk

# Load message
tellraw @a[predicate=brg:entity_properties/is_developer] [{"translate":"debug.prefix","color":"yellow","bold":true},{"translate":"commands.brg.reload.success","color":"white","bold":false}]
