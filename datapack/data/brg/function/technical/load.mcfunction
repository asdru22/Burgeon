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

## Gamerules
gamerule logAdminCommands false
gamerule commandBlockOutput false
gamerule maxCommandChainLength 1073741824

## Constants
scoreboard players set #0 brg.dummy 0
scoreboard players set #1 brg.dummy 1
scoreboard players set #3 brg.dummy 3
scoreboard players set #12 brg.dummy 12

# Load message
tellraw @a[predicate=brg:entity_properties/is_developer] [{"translate":"debug.prefix","color":"yellow","bold":true},{"translate":"commands.brg.reload.success","color":"white","bold":false}]
