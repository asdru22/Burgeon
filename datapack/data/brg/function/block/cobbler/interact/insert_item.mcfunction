# init
data modify block ~ ~ ~ Items set from storage brg:temp root.items
scoreboard players reset #temp_1 brg.dummy
data remove storage brg:macro root

# process item
execute unless data storage brg:temp root.item.components run data modify storage brg:temp root.item.components set value {}
execute if score #sneaking brg.dummy matches 0 run data modify storage brg:temp root.item.count set value 1

# default return count
data modify storage brg:macro root.return_count set from storage brg:temp root.item.count

# put new item
function brg:technical/macros/loot/insert_with_return_value with storage brg:temp root.item

# get updated items
data modify storage brg:temp root.items set from block ~ ~ ~ Items

# check for overflowing items
execute if data storage brg:temp root.items[2] run function brg:block/cobbler/interact/overflowing_items

# remove items from player
execute at @s run playsound brg:block.cobbler.put_item block @a[distance=..16]
# dont remove any items if they overflow
execute if score #temp_1 brg.dummy matches 0 run return fail

# if in creative, dont take items
execute if score #drop_item brg.dummy matches 0 run return fail

# take items
function brg:block/cobbler/interact/take_set_amount with storage brg:macro root
