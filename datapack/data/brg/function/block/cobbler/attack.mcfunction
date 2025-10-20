# get mouth item
execute on passengers if entity @s[tag=brg.cobbler_item] run return run function brg:block/cobbler/mouth_item/drop

# check if its grown and has seed
execute if function brg:block/cobbler/is_grown on passengers if entity @s[tag=brg.etched_vase.seed] run function brg:block/cobbler/attack_seed
