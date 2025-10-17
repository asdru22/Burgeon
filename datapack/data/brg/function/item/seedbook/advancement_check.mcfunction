$execute if entity @s[advancements={brg:seedbook/$(seed)=false}] run data modify storage brg:macro root.page set value {seed:"technical/unknown",result:"technical/unknown"}
$execute if entity @s[advancements={brg:seedbook/$(seed)=false}] run say whja
execute positioned ~ 1000 ~ summon item_display run function brg:item/seedbook/get_data with storage brg:macro root.page
function brg:item/seedbook/macro_dialog with storage brg:macro root.dialog
