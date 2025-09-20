# Handle attack events

data remove entity @s attack

execute if entity @s[tag=brg.interaction.etched_vase] run return run execute on vehicle run function brg:block/etched_vase/attack/main
