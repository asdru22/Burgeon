data modify entity @s item.components."minecraft:custom_data".brg.instrument set from entity @s item.components."minecraft:instrument"
data modify entity @s item.id set value "minecraft:warped_fungus_on_a_stick"
item modify entity @s contents brg:intwine/goat_horn

execute unless items entity @s weapon *[minecraft:custom_name] run item modify entity @s contents {function:"minecraft:set_name",name:{translate:"item.minecraft.goat_horn"},target:"item_name"}
