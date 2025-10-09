data merge entity @s {teleport_duration:10}
tp @s ^ ^ ^0.8
# Insert loot in the claw
execute if entity @s[tag=brg.murky_crevice_claw.holding_item] on passengers run return run loot replace entity @s contents loot brg:gameplay/murky_crevice_trading

# kill if it isnt holding anything
function brg:block/murky_crevice/claw/kill/main
