data remove storage brg:temp root.rotation
data modify storage brg:temp root.rotation set from entity @s Rotation

tag @s add brg.temp
execute summon item_display run function brg:block/crackle/interact/item_setup
tag @s remove brg.temp
tag @s add brg.crackle.item
execute as @p[gamemode=!creative,advancements={brg:technical/player_interacted_with_entity/interaction={interact=true}}] run item modify entity @s weapon.mainhand brg:reduce_count
scoreboard players set @s brg.dummy2 1
item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["holding"],mode:"replace_all"}}
