# Find interaction

$execute if entity @s[advancements={brg:technical/player_interacted_with_entity/interaction={attack=true}}] as @n[tag=brg.interaction,type=interaction,distance=..$(range)] if data entity @s attack at @s run return run function brg:entity/interaction/attack
$execute if entity @s[advancements={brg:technical/player_interacted_with_entity/interaction={interact=true}}] as @n[tag=brg.interaction,type=interaction,distance=..$(range)] if data entity @s interaction at @s run function brg:entity/interaction/interact
