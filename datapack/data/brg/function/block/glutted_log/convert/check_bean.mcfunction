#  Consume bean and summon marker to get rotation
execute summon marker run function brg:block/glutted_log/convert/get_rotation
# Check contents
execute as @n[type=minecraft:item,distance=..3] if items entity @s contents *[minecraft:custom_data~{brg:{id:"bean"}},!minecraft:custom_model_data] at @s run return run function brg:block/glutted_log/convert/as_bean

return fail
