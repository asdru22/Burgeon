# dont allow if its baby
execute unless function brg:block/cobbler/is_grown run return fail
# dont allow if theres an item in its mouth
execute on passengers on passengers if entity @s[tag=brg.cobbler_item] run return fail

# use feather to tickle to take items
execute if data storage brg:temp root.item{id:"minecraft:feather"} on passengers if entity @s[tag=brg.etched_vase.seed] run return run function brg:block/cobbler/tickle

# dont allow if the vase is ticked for recipe
execute if entity @s[tag=brg.etched_vase.cobbler_recipe] run return fail

# add item
execute on passengers if entity @s[tag=brg.etched_vase.seed] if data storage brg:temp root.item run function brg:block/cobbler/interact/add_item
