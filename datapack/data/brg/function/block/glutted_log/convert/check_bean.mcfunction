execute summon marker run function brg:block/glutted_log/convert/get_rotation
execute as @n[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{brg:{id:"bean"}}}}}] at @s run return run function brg:block/glutted_log/convert/as_bean
return fail
