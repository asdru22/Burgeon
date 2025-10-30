# Handle interaction events

data remove entity @s interaction

execute if entity @s[tag=brg.interaction.etched_vase] run return run execute on vehicle positioned ~ ~0.5 ~ run function brg:block/etched_vase/interact/main

execute if entity @s[tag=brg.interaction.spile] run return run execute on vehicle if entity @s[tag=brg.spile.wall] run function brg:block/spile/interact/main

execute if entity @s[tag=brg.interaction.crackle] run return run execute on vehicle if entity @s[tag=brg.crackle] run function brg:block/crackle/interact/main
