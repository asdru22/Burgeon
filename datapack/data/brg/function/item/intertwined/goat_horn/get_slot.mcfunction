data remove storage brg:macro root
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{brg:{id:"intertwined_goat_horn"}}] run return run function brg:item/intertwined/goat_horn/get_item {slot:"weapon.mainhand",slot_raw:"SelectedItem"}

execute if items entity @s weapon.offhand *[minecraft:custom_data~{brg:{id:"intertwined_goat_horn"}}] run return run function brg:item/intertwined/goat_horn/get_item {slot:"weapon.offhand",slot_raw:"equipment.offhand"}

