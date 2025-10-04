# Commands to place a glutted log

setblock ~ ~ ~ minecraft:air
summon minecraft:item_display ~ ~1 ~ {Tags:["brg.glutted_log","brg.block","brg.item_display","brg.prevents_hoppers","smithed.block","smithed.entity","brg.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:barrel",count:1,components:{"minecraft:item_model":"brg:block/glutted_log","minecraft:custom_model_data":{"flags":[false]}}},view_range:4.0f}
function brg:block/hopper_updating/fill
setblock ~ ~ ~ minecraft:barrel[facing=down]{CustomName:{"font":"brg:technical","translate":"block.brg.glutted_log.name"},"components":{"minecraft:custom_data":{"brg":{block_id:"glutted_log"}}},lock:{"components":{"minecraft:custom_data":{"brg":{locked:1b}}}}}
execute store result block ~ ~ ~ components."minecraft:custom_data".brg.required_beans int 1 run random value 2..5
