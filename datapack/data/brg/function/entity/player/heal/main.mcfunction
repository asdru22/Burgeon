## function brg:entity/player/heal/main {amount:6000} heals for 3 hearts (6 health points)
# Add the health amount to the player score
$scoreboard players set @s brg.heal $(amount)
# Calculate the health difference required
execute store result score #health.amount brg.heal run attribute @s minecraft:max_health get 1000
execute store result score #health.current brg.heal run data get entity @s Health 1000

scoreboard players operation #health.amount brg.heal -= #health.current brg.heal

# Apply new max health attributes
data remove storage brg:macro root
execute store result storage brg:macro root.amount float 0.001 run scoreboard players operation #health.amount brg.heal -= @s brg.heal

attribute @s minecraft:max_health modifier remove brg:heal
function brg:entity/player/heal/apply_attribute with storage brg:macro root

# Set flag and apply instant health to trigger the advancement
effect give @s minecraft:instant_health 1 28 true
