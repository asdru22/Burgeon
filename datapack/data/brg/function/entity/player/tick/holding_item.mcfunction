# Commands to run if the player is holding an item in either of their hands.
## Warped fungus on a stick commands
execute if entity @s[scores={brg.used_warped_fungus_on_a_stick=1..}] run function brg:item/warped_fungus_on_a_stick/use
