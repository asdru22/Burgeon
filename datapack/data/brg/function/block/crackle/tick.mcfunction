execute unless block ~ ~ ~ #brg:etched_vase_base run return run function brg:block/crackle/break/no_block

execute if score @s brg.dummy2 matches ..2 if block ~ ~ ~ minecraft:player_head[powered=true] run return run function brg:block/crackle/powered/on

execute if score @s brg.dummy2 matches 2 if block ~ ~ ~ minecraft:player_head[powered=false] run return run function brg:block/crackle/powered/off
