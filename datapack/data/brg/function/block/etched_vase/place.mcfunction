# Summon the actual entity

# is on wall? 0 -> no wall model, 1 -> wall model
execute align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:stone",count:1,components:{"item_model":"brg:block/etched_vase","minecraft:custom_model_data":{"flags":[false]}}},Tags:["brg.block","brg.tick","brg.etched_vase","brg.etched_vase.initiate","smithed.block","smithed.entity","brg.item_display"],view_range:4.0f,teleport_duration:0,interpolation_duration:0,Passengers:[{id:"minecraft:interaction",width: 0.5, height:0.1, Tags:["brg.interaction","brg.interaction.etched_vase"],response:true,Silent:true}]}

execute as @n[type=minecraft:item_display,tag=brg.etched_vase.initiate] run function brg:block/etched_vase/initiate
data merge block ~ ~ ~ {"components":{"minecraft:custom_data":{"brg":{block_id:"etched_vase"}}}}
data remove block ~ ~ ~ components."minecraft:custom_data".brg.custom_block
