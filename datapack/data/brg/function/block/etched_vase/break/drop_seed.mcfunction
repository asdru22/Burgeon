# Call the loot table to drop the result based on seed id and age
execute if score #powered brg.dummy matches 1 if function brg:block/etched_vase/powered_effects run return fail
$loot spawn ~ ~ ~ loot brg:etched_vase/$(id)
