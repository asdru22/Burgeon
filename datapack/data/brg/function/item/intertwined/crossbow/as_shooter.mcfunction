execute if items entity @s weapon.mainhand crossbow[minecraft:enchantments~[{enchantments:"brg:intertwined_crossbow"}]] run return run function brg:technical/macros/damage_slot/main {slot:"weapon.mainhand",slot_raw:"SelectedItem",amount:5}

execute if items entity @s weapon.offhand crossbow[minecraft:enchantments~[{enchantments:"brg:intertwined_crossbow"}]] run return run function brg:technical/macros/damage_slot/main {slot:"weapon.offhand",slot_raw:"equipment.offhand",amount:5}
