# Summon the actual entity

# is on wall? 0 -> no wall model, 1 -> wall model
execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:stone",count:1,components:{"item_model":"brg:block/etched_vase","minecraft:custom_model_data":{"strings":["ground"]}}},Tags:["brg.block","brg.tick","brg.etched_vase","brg.etched_vase.initiate","smithed.block","smithed.entity","brg.item_display"],view_range:4.0f,teleport_duration:0,interpolation_duration:0,Passengers:[{id:"minecraft:interaction",width: 0.55, height:0.55, Tags:["brg.interaction","brg.interaction.etched_vase"],response:true}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}

execute as @n[type=minecraft:item_display,tag=brg.etched_vase.initiate] run function brg:block/etched_vase/initiate
data merge block ~ ~ ~ {"components":{"minecraft:custom_data":{"brg":{block_id:"etched_vase"}}}}
data remove block ~ ~ ~ components."minecraft:custom_data".brg.custom_block
