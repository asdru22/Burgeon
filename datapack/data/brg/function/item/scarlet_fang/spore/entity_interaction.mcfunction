# Commands for interactions with entities
execute if entity @s[nbt={Invulnerable:1b}] run return fail
$execute if entity @s[nbt={UUID:$(UUID)}] run return fail
$execute if entity @s[nbt={Owner:$(UUID)}] run return fail
$execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"passenger":{"nbt":"{UUID:$(UUID)}"}}} run return fail

$damage @s 4.0 brg:scarlet_spore by @p[nbt={UUID:$(UUID)}]

$execute as @p[nbt={UUID:$(UUID)}] run function brg:item/scarlet_fang/heal/get_player_pos

execute as @n[type=item_display,tag=brg.scarlet_spore] run function brg:item/scarlet_fang/heal/init with storage brg:temp root.scarlet_spore.macro_input
