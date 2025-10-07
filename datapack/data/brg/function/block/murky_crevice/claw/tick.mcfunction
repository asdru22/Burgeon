scoreboard players add @s brg.dummy2 1
# move forward
execute if score @s brg.dummy2 matches 1 run tp @s ^ ^ ^1.1
# check if theres a bean, if there is, pick it up
execute if score @s brg.dummy2 matches 10 run function brg:block/murky_crevice/claw/attempt_pickup
# move backwards
execute if score @s brg.dummy2 matches 15 run tp @s ^ ^ ^-0.8
# insert loot if there is a bean, and then move forward
execute if score @s brg.dummy2 matches 35 run function brg:block/murky_crevice/claw/insert_loot
# convert the held item to an item entity, and move backwards
execute if score @s brg.dummy2 matches 50 run function brg:block/murky_crevice/claw/drop_item
# remove claw
execute if score @s brg.dummy2 matches 65 run function brg:block/murky_crevice/claw/kill/main
