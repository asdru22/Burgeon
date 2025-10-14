# Handle attack events

data remove entity @s attack
stopsound @a[distance=..16] * minecraft:entity.player.attack.nodamage

execute if entity @s[tag=brg.interaction.etched_vase] run return run execute on vehicle positioned ~ ~0.5 ~ run function brg:block/etched_vase/attack/main

execute if entity @s[tag=brg.interaction.spile] run return run execute on vehicle positioned ~ ~0.5 ~ run function brg:block/spile/break/attack
