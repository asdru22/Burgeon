# Commands for interactions with entities
execute if entity @s[nbt={Invulnerable:1b}] run return fail
$execute if entity @s[nbt={UUID:$(UUID)}] run return fail
$execute if entity @s[nbt={Owner:$(UUID)}] run return fail
$execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"passenger":{"nbt":"{UUID:$(UUID)}"}}} run return fail

$damage @s 2.0 brg:intertwined_spear_thorn by @p[nbt={UUID:$(UUID)}]
