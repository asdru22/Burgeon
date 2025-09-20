execute align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:stone",count:1,components:{"item_model":"brg:block/etched_vase"}},Tags:["brg.block","brg.tick","brg.etched_vase","brg.etched_vase.initiate","smithed.block","smithed.entity"]}
execute as @n[type=minecraft:item_display,tag=brg.etched_vase.initiate] run function brg:block/etched_vase/initiate
setblock ~ ~ ~ minecraft:player_head{profile:{texture:"brg:block/etched_vase_soil/empty"},"components":{"minecraft:custom_data":{"brg":{block_id:"etched_vase"}}}} replace
