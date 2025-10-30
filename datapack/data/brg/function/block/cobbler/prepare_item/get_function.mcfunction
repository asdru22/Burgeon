data modify storage brg:temp root.target set from entity @s data.brg.target
data modify storage brg:temp root.function set from entity @s data.brg.function
execute summon item_display run function brg:block/cobbler/prepare_item/function with storage brg:temp root
