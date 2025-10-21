# ignore if its enchanted
$execute if items entity @s $(slot) *[enchantments~[{enchantments: "#brg:intertwined"}]] run return fail

# if it isnt, remove the intertwined data
$item modify entity @s $(slot) brg:intwine/remove
say mac
