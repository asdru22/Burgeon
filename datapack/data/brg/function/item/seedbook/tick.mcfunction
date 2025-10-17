# close
execute if score @s brg.seedbook matches 102 run return run dialog clear @s
# previous
execute if score @s brg.seedbook_page matches 1.. if score @s brg.seedbook matches 100 run scoreboard players remove @s brg.seedbook_page 1

# next
execute store result score #temp_0 brg.dummy if data storage brg:storage root.seedbook[]
scoreboard players remove #temp_0 brg.dummy 1
execute if score @s brg.seedbook_page < #temp_0 brg.dummy if score @s brg.seedbook matches 101 run scoreboard players add @s brg.seedbook_page 1

#open
function brg:item/seedbook/open

# reset
scoreboard players reset @s brg.seedbook
scoreboard players enable @s brg.seedbook
