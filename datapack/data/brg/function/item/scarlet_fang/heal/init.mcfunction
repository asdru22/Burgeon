scoreboard players set #temp_0 brg.dummy 400
$particle trail{duration:10,color:[0.439,1.000,0.012],target:[$(x),$(y),$(z)]} ~ ~ ~ 0.35 0.35 0.35 0.01 20 normal
function brg:item/scarlet_fang/spore/kill

$execute as @p[nbt={UUID:$(UUID)}] run function brg:entity/player/heal/main {amount:4000}
