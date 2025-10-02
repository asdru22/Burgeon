scoreboard players add @s brg.break_hit_timer 1
execute if score @s brg.break_hit_timer matches 40.. run scoreboard players reset @s brg.break_hit_count
execute if score @s brg.break_hit_timer matches 40.. run return run scoreboard players reset @s brg.break_hit_timer
