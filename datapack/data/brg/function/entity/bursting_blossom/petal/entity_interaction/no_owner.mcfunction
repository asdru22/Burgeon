# Commands for interactions with entities
damage @s 6.0 brg:bursting_blossom_petal
$kill @n[type=item_display,tag=brg.bursting_blossom_petal,nbt={UUID:$(uuid)}]
execute if predicate brg:random_chance/0.05 run loot spawn ~ ~ ~ loot brg:items/bursting_bud
