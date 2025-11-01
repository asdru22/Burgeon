tag @s add brg.temp
# If a bean was successfully consumed, update count
execute if function brg:block/glutted_log/convert/check_bean run function brg:block/glutted_log/convert/check_count
tag @s remove brg.temp
