particle dust{color:[0.761,0.196,0.082],scale:1} ~ ~-0.2 ~ 0 0 0 0 1 normal

execute if entity @s[scores={brg.dummy2=3..}] run function brg:item/scarlet_fang/spore/track_entity with entity @s item.components."minecraft:custom_data".brg.macro_input

execute unless entity @s[scores={brg.dummy2=25..}] run return run function brg:item/scarlet_fang/spore/move

function brg:item/scarlet_fang/spore/kill
