# Commands for interactions with entities
execute if entity @s[nbt={Invulnerable:1b}] run return fail
$execute if entity @s[nbt={UUID:$(owner)}] run return fail
$execute if entity @s[nbt={Owner:$(owner)}] run return fail
$execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"passenger":{"nbt":"{UUID:$(owner)}"}}} run return fail

execute if predicate brg:random_chance/0.1 run loot spawn ~ ~ ~ loot brg:items/bursting_bud
$damage @s 4.0 brg:bursting_blossom_petal by @p[nbt={UUID:$(owner)}]
$kill @n[type=item_display,tag=brg.bursting_blossom_petal,nbt={UUID:$(uuid)}]
