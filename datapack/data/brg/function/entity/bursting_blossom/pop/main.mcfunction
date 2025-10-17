data remove storage brg:temp root.uuid
data modify storage brg:temp root.uuid set value []
execute positioned ~-0.5 ~-0.5 ~-0.5 run data modify storage brg:temp root.uuid set from entity @n[type=#minecraft:impact_projectiles,dx=0] Owner

scoreboard players set #temp_0 brg.dummy 0
execute rotated 0 -30 run function brg:entity/bursting_blossom/pop/summon_petal

particle minecraft:explosion
playsound brg:entity.bursting_blossom.pop hostile @a[distance=..20]
kill @s
