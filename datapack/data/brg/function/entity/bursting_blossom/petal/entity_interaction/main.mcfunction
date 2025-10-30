execute if entity @s[nbt={Invulnerable:1b}] run return fail

execute if data storage brg:temp root.bursting_blossom_petal{owner:[]} run return run function brg:entity/bursting_blossom/petal/entity_interaction/no_owner with storage brg:temp root.bursting_blossom_petal

function brg:entity/bursting_blossom/petal/entity_interaction/owner with storage brg:temp root.bursting_blossom_petal
