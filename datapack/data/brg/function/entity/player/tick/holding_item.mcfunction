# Commands to run if the player is holding an item in either of their hands.

# prevent weapon components shenanigans


## Warped fungus on a stick commands
# funny bug fix
execute if entity @s[advancements={brg:technical/player_hurt_entity/weapon=true}] run return 0

execute if entity @s[scores={brg.used_warped_fungus_on_a_stick=1..}] run function brg:item/warped_fungus_on_a_stick/use
