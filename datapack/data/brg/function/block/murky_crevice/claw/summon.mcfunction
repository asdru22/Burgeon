# Data to pass to the claw
data modify storage brg:temp root.block set from entity @s UUID
data modify storage brg:temp root.rotation set from entity @s Rotation
execute at @s positioned ~ ~-0.5 ~ summon item_display run function brg:block/murky_crevice/claw/as_claw

tag @s add brg.murky_crevice.claw_extending
function brg:block/murky_crevice/open_eyes
