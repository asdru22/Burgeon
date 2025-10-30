# Remove a bean once collected
execute as @n[type=item,distance=..1] if items entity @s contents *[minecraft:custom_data~{brg:{id:"bean"}}] run return run function brg:block/murky_crevice/claw/get_item
return fail
