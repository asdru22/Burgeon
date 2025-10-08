execute store result score #temp_0 brg.dummy run data get entity @s SelectedItem.components."minecraft:damage"
#offhand item damage
execute store result score #temp_1 brg.dummy run data get entity @s equipment.offhand.components."minecraft:damage"

data remove storage brg:macro root
execute store result storage brg:macro root.damage int 1 run scoreboard players operation #temp_0 brg.dummy += #temp_1 brg.dummy

data modify storage brg:macro root.slot set value "weapon.mainhand"
item replace entity @s weapon.offhand with air

playsound brg:item.rootsplit_sickle.combine player @a[distance=..16]

item modify entity @s weapon.mainhand brg:rootsplit_sickle/combine
function brg:technical/macros/damage_slot/damage with storage brg:macro root
