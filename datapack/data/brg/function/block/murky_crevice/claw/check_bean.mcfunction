# Insert loot if a claw dragged a bean successfully
execute if items entity @s contents *[minecraft:custom_model_data={strings:["bean"]}] run return run function brg:block/murky_crevice/claw/insert_loot

tp @s ^ ^ ^-0.8
