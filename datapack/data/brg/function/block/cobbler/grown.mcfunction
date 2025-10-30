execute on passengers if entity @s[type=interaction] run data modify entity @s height set value 1.6
execute on passengers if entity @s[tag=brg.etched_vase.seed] run function brg:block/cobbler/mouth_item/first
# store items on seed
execute on passengers if entity @s[tag=brg.etched_vase.seed] run data modify entity @s data.brg.cobbler_items set value []
