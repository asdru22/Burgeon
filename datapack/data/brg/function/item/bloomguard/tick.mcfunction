# Commands to run for the bloomguard tickly

execute unless entity @s[scores={brg.dummy2=121..}] run function brg:item/bloomguard/move
execute if entity @s[scores={brg.dummy2=121..}] run function brg:item/bloomguard/pop_into_item
