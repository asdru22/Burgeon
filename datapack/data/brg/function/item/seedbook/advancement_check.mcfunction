$execute if entity @s[advancements={brg:seedbook/$(seed)=false}] run return run execute positioned ~ 1000 ~ summon item_display run function brg:item/seedbook/unknown_page with storage brg:macro root.page


execute positioned ~ 1000 ~ summon item_display run function brg:item/seedbook/get_data with storage brg:macro root.page
