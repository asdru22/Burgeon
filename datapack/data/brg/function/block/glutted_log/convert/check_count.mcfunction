execute store result score #temp_1 brg.dummy run data get block ~ ~-1 ~ components."minecraft:custom_data".brg.required_beans
scoreboard players add @s brg.consumed_beans 1

execute if score @s brg.consumed_beans >= #temp_1 brg.dummy run function brg:block/glutted_log/convert/to_murky_crevice
