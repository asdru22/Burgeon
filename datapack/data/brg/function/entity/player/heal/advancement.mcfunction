advancement revoke @s only brg:technical/effects_changed/heal

execute unless predicate brg:entity_properties/has_instant_health run function brg:entity/player/heal/remove_attribute
