advancement revoke @s only brg:technical/player_hurt_entity/rootsplit_sickle

# dont do anything if the item isnt the staff
execute unless data entity @s SelectedItem.components."minecraft:custom_model_data"{strings:["combined"]} run return fail

# get current duability
execute store result score #temp_0 brg.dummy run data get entity @s SelectedItem.components."minecraft:custom_model_data".floats[0]

# remove 1 and store in macro storage
data remove storage brg:macro root
execute store result storage brg:macro root.damage int 1 run scoreboard players remove #temp_0 brg.dummy 1

# if durability is less than 0, split
execute if score #temp_0 brg.dummy matches ..0 run return run function brg:item/rootsplit_sickle/staff/snap


# otherwise, update the durability
function brg:item/rootsplit_sickle/staff/update_durability with storage brg:macro root
