# Commands to run off a newly summoned claw
data merge entity @s {Tags:["brg.murky_crevice_claw","brg.block","brg.item_display","smithed.entity"],item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"brg:block/murky_crevice_claw"}},teleport_duration:10}
data modify entity @s Rotation set from storage brg:temp root.rotation
data modify entity @s data.brg.block set from storage brg:temp root.block
