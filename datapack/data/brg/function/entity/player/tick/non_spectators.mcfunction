# Functions to run off non-spectator players every single tick

## Commands for holding items
execute if predicate brg:entity_properties/slots/weapon/anything run function brg:entity/player/tick/holding_item


## Reset scores
scoreboard players reset @s brg.used_warped_fungus_on_a_stick
