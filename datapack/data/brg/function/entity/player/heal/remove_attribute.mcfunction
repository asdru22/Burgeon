# Don't award the player any further effects changed advancements
scoreboard players set @s brg.heal 0

# Revoke health attribute
attribute @s minecraft:max_health modifier remove brg:heal
