execute on passengers if entity @s[tag=brg.etched_vase.seed] if items entity @s contents *[minecraft:custom_data~{brg:{id:"baby_cobbler"}},minecraft:custom_model_data={strings:["age1"]}] run return 1
execute on passengers if entity @s[tag=brg.etched_vase.seed] if items entity @s contents *[minecraft:custom_data~{brg:{id:"baby_cobbler"}},minecraft:custom_model_data={strings:["closed"]}] run return 1

return fail
