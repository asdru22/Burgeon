# Get total amount of wildstep pods, check if its greater than wildstep pods with the enchantment

execute store result score #temp_0 brg.dummy run clear @s poisonous_potato[minecraft:custom_data~{brg:{id:"wildstep_pods"}}] 0
execute store result score #temp_1 brg.dummy run clear @s poisonous_potato[minecraft:custom_data~{brg:{id:"wildstep_pods"}}, enchantments~[{enchantments:"brg:hyperbloom"}]] 0
execute if score #temp_0 brg.dummy > #temp_1 brg.dummy run advancement grant @s only brg:burgeon/remove_hyperbloom

advancement revoke @s only brg:technical/inventory_changed/wildstep_pods
