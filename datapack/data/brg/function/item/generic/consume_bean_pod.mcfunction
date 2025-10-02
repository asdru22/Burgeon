# ran when a Bean Pod is opened
advancement revoke @s only brg:technical/item_consumed/bean_pod

execute unless predicate brg:entity_properties/full_inventory run return run loot give @s loot brg:gameplay/open_bean_pod
loot spawn ~ ~ ~ loot brg:gameplay/open_bean_pod
