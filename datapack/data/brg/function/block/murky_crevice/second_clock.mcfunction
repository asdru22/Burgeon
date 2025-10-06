execute if entity @s[tag=brg.murky_crevice.eyes] run function brg:block/murky_crevice/close_eyes
execute if predicate brg:random_chance/0.1 run function brg:block/murky_crevice/open_eyes
