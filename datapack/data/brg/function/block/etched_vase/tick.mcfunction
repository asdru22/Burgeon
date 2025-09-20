# Ticking for etched vases
execute unless block ~ ~ ~ #brg:etched_vase_base run return run function brg:block/etched_vase/break/mine
execute if block ~ ~ ~ player_wall_head unless block ^ ^ ^-1 #brg:opaque run function brg:block/etched_vase/break/no_support
