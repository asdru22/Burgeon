execute if predicate brg:entity_properties/slots/weapon.mainhand/bloomguard_blocking run item modify entity @s weapon.mainhand brg:bloomguard/default

execute if predicate brg:entity_properties/slots/weapon.offhand/bloomguard_default run item modify entity @s weapon.offhand brg:bloomguard/blocking
tag @s remove brg.bloomguard_schedule

advancement revoke @s only brg:technical/inventory_changed/bloomguard
