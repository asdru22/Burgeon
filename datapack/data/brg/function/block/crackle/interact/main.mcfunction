execute if score @s brg.dummy2 matches 2 run return fail

execute if entity @s[tag=brg.crackle.item] on passengers if entity @s[tag=brg.crackle_item] run return run function brg:block/crackle/drop_item

execute if entity @s[tag=!brg.crackle.item] if data storage brg:temp root.item run return run function brg:block/crackle/interact/insert_item
