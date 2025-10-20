# When hitting or interacting with a brg interaction

data remove storage brg:macro root
data remove storage brg:temp root.item
data modify storage brg:temp root.item set from entity @s Inventory[{Slot:-106b}]
data modify storage brg:temp root.item set from entity @s SelectedItem

execute store result score #drop_item brg.dummy if entity @s[gamemode=!creative]
execute store result score #sneaking brg.dummy if predicate brg:entity_properties/sneaking

execute store result score #temp_0 brg.dummy run attribute @s minecraft:entity_interaction_range get
execute store result storage brg:macro root.range float 1 run scoreboard players add #temp_0 brg.dummy 2
function brg:entity/interaction/macro with storage brg:macro root

advancement revoke @s only brg:technical/player_interacted_with_entity/interaction
