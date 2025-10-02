setblock ~ ~ ~ minecraft:vault[facing=south]{config:{loot_table:"brg:chests/mossy_trail/vault"}}

summon item_display ~ ~ ~ {Tags:["brg.temp"]}
loot replace entity @n[type=item_display,tag=brg.temp] contents loot brg:items/twining_tendril
data modify block ~ ~ ~ config.key_item set from entity @n[type=item_display,tag=brg.temp] item
kill @n[type=item_display,tag=brg.temp]
