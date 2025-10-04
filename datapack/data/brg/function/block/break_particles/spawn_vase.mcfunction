data remove storage brg:temp root.macro_input
data modify storage brg:temp root.macro_input.item set from entity @s item
data merge storage brg:temp {root:{macro_input:{dx:0.2,dy:0.2,dz:0.2,speed:0.07,count:60}}}
function brg:block/break_particles/macro with storage brg:temp root.macro_input
