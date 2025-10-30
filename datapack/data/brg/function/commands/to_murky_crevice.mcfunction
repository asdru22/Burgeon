data remove storage brg:macro root
data modify storage brg:macro root.owner set from entity @s UUID
execute as @n[tag=brg.glutted_log] at @s run function brg:block/glutted_log/convert/to_murky_crevice with storage brg:macro root
