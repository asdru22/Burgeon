# Commands to break an etched vase

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..5,nbt={Item:{components:{"minecraft:profile":{id:[I;66,0,0,1]}},id:"minecraft:player_head"}}] run function brg:block/etched_vase/break/item

particle item{item:"minecraft:nether_bricks"} ~ ~ ~ 0 0.1 0 0.1 20 normal

data remove storage brg:temp root.item
data modify storage brg:temp root.item set from entity @s item.components."minecraft:custom_data".brg.soil
data modify storage brg:temp root.item.count set value 1
execute unless data storage brg:temp root.item.components run data modify storage brg:temp root.item.components set value {}
execute if entity @s[tag=brg.etched_vase.has_soil] run function brg:technical/macros/loot/spawn with storage brg:temp root.item

execute if entity @s[tag=brg.etched_vase.has_seed] on passengers if entity @s[tag=brg.etched_vase.seed] run function brg:block/etched_vase/remove_seed


execute on passengers run kill
kill @s
