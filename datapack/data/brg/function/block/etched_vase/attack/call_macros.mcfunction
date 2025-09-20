# if mainhand is free, put in mainhand, otherwise give. If inventory is full, spawn the item

execute unless items entity @s weapon.mainhand * run return run function brg:technical/macros/loot/replace with storage brg:temp root.item
function brg:technical/macros/loot/give_or_spawn_if_full with storage brg:temp root.item
