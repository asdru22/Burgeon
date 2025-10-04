playsound brg:item.bloomguard.throw neutral @a[distance=..16] ~ ~ ~ 1 1

data remove storage brg:temp root
data modify storage brg:temp root.bloomguard.UUID set from entity @s UUID
data modify storage brg:temp root.bloomguard.gamemode set from entity @s playerGameType
data modify storage brg:temp root.bloomguard.item set from entity @s SelectedItem

execute summon minecraft:item_display run function brg:item/bloomguard/throw/initiate
