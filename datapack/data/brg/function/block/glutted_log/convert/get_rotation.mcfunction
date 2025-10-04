rotate @s facing entity @n[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{brg:{id:"bean"}}}}}]
execute store result score #temp_0 brg.dummy run data get entity @s Rotation[0] 100
kill
