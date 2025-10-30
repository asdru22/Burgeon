# get mouth item
execute on passengers if entity @s[tag=brg.etched_vase.seed] on passengers if entity @s[tag=brg.cobbler_item] run function brg:block/cobbler/mouth_item/drop

execute on passengers if entity @s[tag=brg.etched_vase.seed] run function brg:block/cobbler/attempt_new_cobble
