# ignore if its enchanted
$execute if items entity @s $(slot) *[enchantments~[{enchantments: "#brg:intertwined"}]] run return fail

# if it isnt, remove the intertwined data
$item modify entity @s $(slot) brg:intwine/remove

$execute if items entity @s $(slot) *[minecraft:custom_data~{brg:{id:"intertwined_goat_horn"}}] run function brg:item/intertwined/goat_horn/remove {slot:"$(slot)",slot_raw:"$(slot_raw)"}
