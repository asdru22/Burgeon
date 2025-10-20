execute on passengers if entity @s[type=interaction] run data modify entity @s height set value 1.6
tag @s add brg.temp
data modify storage brg:temp root.rotation set from entity @s Rotation
execute summon item_display run function brg:block/cobbler/mouth_item/set {result:"brg:items/damp_notes"}
tag @s remove brg.temp

# store items on seed
execute on passengers if entity @s[tag=brg.etched_vase.seed] run data modify entity @s data.brg.cobbler_items set value []
