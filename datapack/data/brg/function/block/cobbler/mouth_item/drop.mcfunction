advancement grant @p[advancements={brg:technical/player_interacted_with_entity/interaction={attack=true}}] only brg:burgeon/get_cobbler_mouth_item
execute positioned ~ ~1 ~ run function brg:technical/macros/spawn_item with entity @s
kill @s

playsound brg:block.cobbler.take_item block @a[distance=..16]
