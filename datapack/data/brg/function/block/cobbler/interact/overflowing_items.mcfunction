# get overflow count
execute store result score #temp_0 brg.dummy run data get storage brg:temp root.items[2].count 1

# remove extra items
data remove storage brg:temp root.items[2]

# get orignal item count
execute store result score #temp_1 brg.dummy run data get storage brg:temp root.item.count

# update remove count
execute store result storage brg:macro root.return_count int 1 run scoreboard players operation #temp_1 brg.dummy -= #temp_0 brg.dummy
