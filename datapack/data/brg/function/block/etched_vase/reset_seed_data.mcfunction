# Reset interaction height if it has a cobbler
execute if function brg:block/etched_vase/cobbler_check on passengers if entity @s[type=interaction] run data modify entity @s height set value 0.55

# Reset seed related data
execute on passengers if entity @s[tag=brg.etched_vase.seed] run function brg:block/etched_vase/remove_seed
tag @s remove brg.etched_vase.has_seed
scoreboard players set @s brg.seed_age 0
tag @s remove brg.etched_vase.seed_grown
scoreboard players reset #powered brg.dummy
