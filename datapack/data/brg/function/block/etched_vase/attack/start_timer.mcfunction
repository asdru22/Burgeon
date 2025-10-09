# Break attacks timer

execute unless score @s brg.break_hit_timer matches 0.. run scoreboard players set @s brg.break_hit_timer 0
scoreboard players add @s brg.break_hit_count 1
execute if score @s brg.break_hit_count matches ..3 run playsound brg:block.etched_vase.hit block @a[distance=..16]

execute if score @s brg.break_hit_count matches 4.. run function brg:block/etched_vase/break/attack
