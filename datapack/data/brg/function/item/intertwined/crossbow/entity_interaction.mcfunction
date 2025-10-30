execute if entity @s[nbt={Invulnerable:1b}] run return fail
$execute if entity @s[nbt={UUID:$(UUID)}] run return fail
$execute if entity @s[nbt={Owner:$(UUID)}] run return fail
$execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"passenger":{"nbt":"{UUID:$(UUID)}"}}} run return fail

ride @s mount @n[type=item_display,tag=brg.temp]
