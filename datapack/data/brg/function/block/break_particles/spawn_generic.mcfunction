# Set values to spawn generic block breaking particles

data remove storage brg:temp root.macro_input
data modify storage brg:temp root.macro_input.item set from entity @s item
data merge storage brg:temp {root:{macro_input:{dx:0.4,dy:0.4,dz:0.4,speed:0.07,count:100}}}
function brg:block/break_particles/macro with storage brg:temp root.macro_input
