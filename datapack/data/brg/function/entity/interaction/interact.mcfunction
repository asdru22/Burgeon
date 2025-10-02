# Handle interaction events

data remove entity @s interaction

execute if entity @s[tag=brg.interaction.etched_vase] run return run execute on vehicle positioned ~ ~0.5 ~ run function brg:block/etched_vase/interact/main
