execute store result score #temp_0 brg.dummy run data get entity @s Health

execute if score #temp_0 brg.dummy matches ..2 run advancement grant @s only brg:burgeon/scarlet_spore_clutch_heal

function brg:entity/player/heal/main {amount:4000}

