execute if entity @s[tag=!brg.murky_crevice.claw_extending] positioned ~ ~-1 ~ positioned ^ ^ ^1 if items entity @n[type=item,distance=..0.5] contents *[minecraft:custom_data~{brg:{id:"bean"}}] run function brg:block/murky_crevice/claw/summon

execute if entity @s[tag=brg.murky_crevice.eyes,tag=!brg.murky_crevice.claw_extending] run function brg:block/murky_crevice/close_eyes
execute if predicate brg:random_chance/0.1 run function brg:block/murky_crevice/open_eyes
