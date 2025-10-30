execute if data storage brg:temp root.item{id:"minecraft:glass_bottle"} if entity @s[tag=!brg.spile.bottle] run return run function brg:block/spile/interact/place_bottle

execute on passengers if entity @s[tag=brg.spile_bottle] run function brg:block/spile/drop_bottle
