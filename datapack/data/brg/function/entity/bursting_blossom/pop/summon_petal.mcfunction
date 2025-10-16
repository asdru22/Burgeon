execute summon item_display run function brg:entity/bursting_blossom/pop/as_petal
scoreboard players add #temp_0 brg.dummy 1
execute if score #temp_0 brg.dummy matches ..10 rotated ~36 ~ run function brg:entity/bursting_blossom/pop/summon_petal
