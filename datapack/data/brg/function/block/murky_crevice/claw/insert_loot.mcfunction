data merge entity @s {teleport_duration:10}
tp @s ^ ^ ^0.8

# if sugarcoated bean found
execute if entity @s[tag=brg.murky_crevice_claw.holding_item] on passengers if items entity @s contents *[minecraft:custom_data~{brg:{id:"bean"}},minecraft:custom_model_data={strings:["sugarcoated"]}] run return run execute on vehicle run function brg:block/murky_crevice/sugarcoated_bean/target_block with entity @s data.brg

# Insert loot in the claw
execute if entity @s[tag=brg.murky_crevice_claw.holding_item] on passengers run return run loot replace entity @s contents loot brg:gameplay/murky_crevice_trading

# kill if it isnt holding anything
function brg:block/murky_crevice/claw/kill/main
