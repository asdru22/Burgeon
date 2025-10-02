# Functions to run off every player every single tick

## Non-Spectator Stuff
execute if entity @s[gamemode=!spectator] run function brg:entity/player/tick/non_spectators
