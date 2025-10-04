# Updates the light level for newly placed custom blocks

execute if block ~ ~ ~ #brg:opaque run function brg:block/update_light/main
tag @s remove brg.newly_placed_update_light
