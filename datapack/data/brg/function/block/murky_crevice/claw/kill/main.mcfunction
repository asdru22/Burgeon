function brg:block/murky_crevice/claw/kill/block with entity @s data.brg
execute if entity @s[tag=brg.murky_crevice_claw.holding_item] on passengers run kill
kill @s
