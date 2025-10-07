ride @s mount @n[type=item_display,tag=brg.temp,distance=..1]
$loot replace entity @s contents loot $(loot_table)
data merge entity @s {transformation:{left_rotation:{axis:[1.0f,0.0f,0.0f],angle:-1.57079632679f},right_rotation:[0f,0f,0f,1f],translation:[0f,-0.35f,0f],scale:[0.33f,0.33f,0.33f]}}
