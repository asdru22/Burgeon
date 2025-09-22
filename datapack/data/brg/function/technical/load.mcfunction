## Adds all scoreboards and sets up everything

# Use for single-tick operations
scoreboard objectives add brg.dummy dummy

# Seed age
scoreboard objectives add brg.seed_age dummy

## Gamerules
gamerule logAdminCommands false
gamerule commandBlockOutput false
gamerule maxCommandChainLength 1073741824

## Constants
scoreboard players set #1 brg.dummy 1

# Load message
tellraw @a[predicate=brg:entity_properties/is_developer] [{"translate":"debug.prefix","color":"yellow","bold":true},{"translate":"commands.brg.reload.success","color":"white","bold":false}]
