execute if entity @s[scores={brg.dummy2=3..}] run function brg:entity/bursting_blossom/petal/track_entity with entity @s data.brg

execute unless entity @s[scores={brg.dummy2=25..}] run return run function brg:entity/bursting_blossom/petal/move

function brg:entity/bursting_blossom/petal/kill
