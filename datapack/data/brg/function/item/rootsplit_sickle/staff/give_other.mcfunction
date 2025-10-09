# free offhand
execute unless items entity @s weapon.offhand * run return run item replace entity @s weapon.offhand from entity @s weapon.mainhand

# summon item
data modify storage brg:macro root.item set from entity @s SelectedItem
function brg:technical/macros/spawn_item with storage brg:macro root
