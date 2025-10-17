# Commands to run off a player each second
execute if items entity @s armor.legs *[minecraft:custom_data~{brg:{id:"appalling_shinguards"}}] run function brg:item/other/appalling_shinguards

scoreboard players reset @s brg.seedbook
scoreboard players enable @s brg.seedbook
