data remove storage brg:macro root
#get half damage
execute store result storage brg:macro root.damage double 0.5 run data get entity @s SelectedItem.components."minecraft:custom_data".brg.sickle_damage

# apply modifier to mainhand
item modify entity @s weapon.mainhand brg:rootsplit_sickle/snap

#apply damage to mainhand
data modify storage brg:macro root.slot set value "weapon.mainhand"
function brg:technical/macros/damage_slot/damage with storage brg:macro root

# create other item
function brg:item/rootsplit_sickle/staff/give_other

playsound brg:item.rootsplit_sickle.snap player @a[distance=..16]

damage @s 5 brg:rootsplit_staff
