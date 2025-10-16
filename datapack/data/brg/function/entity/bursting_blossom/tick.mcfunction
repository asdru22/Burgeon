tp @s ~ ~0.1 ~
scoreboard players add @s brg.dummy2 1
execute if entity @s[scores={brg.dummy2=100..}] run return run function brg:entity/bursting_blossom/pop/main
execute if function brg:entity/bursting_blossom/check_projectiles run function brg:entity/bursting_blossom/pop/main
