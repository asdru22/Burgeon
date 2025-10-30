data modify storage brg:temp root.target set from entity @s data.brg.target
data modify storage brg:temp root.modifier set from entity @s data.brg.modifier
execute summon item_display run function brg:block/cobbler/prepare_item/modifier with storage brg:temp root
