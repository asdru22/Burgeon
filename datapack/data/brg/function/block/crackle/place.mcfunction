execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:stone",count:1,components:{"item_model":"brg:crackle","minecraft:custom_model_data":{"strings":["default"]}}},Tags:["brg.block","brg.tick","brg.crackle","brg.crackle.initiate","smithed.block","smithed.entity","brg.item_display","brg.nonsolid_base"],view_range:4.0f,teleport_duration:0,interpolation_duration:0,Passengers:[{id:"minecraft:interaction",width: 0.55, height:0.55, Tags:["brg.interaction","brg.interaction.crackle"],response:true}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.51f,0f],scale:[1.01f,1.01f,1.01f]}}

execute as @n[type=minecraft:item_display,tag=brg.crackle.initiate] at @s run function brg:block/crackle/initiate
data merge block ~ ~ ~ {"components":{"minecraft:custom_data":{"brg":{block_id:"crackle"}}}}
data remove block ~ ~ ~ components."minecraft:custom_data".brg.custom_block
