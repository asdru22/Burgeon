# Remove a bean once collected
execute as @n[type=item,distance=..1] if items entity @s contents *[minecraft:custom_data~{brg:{id:"bean"}}] run return run item modify entity @s contents brg:reduce_count
return fail
