execute as @s[y_rotation=45..135] run title @s actionbar [{"score":{"name":"@s","objective":"posX"}}, " ", {"score":{"name":"@s", "objective":"posY"}}, " ", {"score":{"name":"@s","objective":"posZ"}}, " W ", {"score":{"name":"@s", "objective":"theta"}}]
execute as @s[y_rotation=135..225] run title @s actionbar [{"score":{"name":"@s","objective":"posX"}}, " ", {"score":{"name":"@s", "objective":"posY"}}, " ", {"score":{"name":"@s","objective":"posZ"}}, " N ", {"score":{"name":"@s", "objective":"theta"}}]
execute as @s[y_rotation=225..315] run title @s actionbar [{"score":{"name":"@s","objective":"posX"}}, " ", {"score":{"name":"@s", "objective":"posY"}}, " ", {"score":{"name":"@s","objective":"posZ"}}, " E ", {"score":{"name":"@s", "objective":"theta"}}]
execute as @s[y_rotation=315..360] run title @s actionbar [{"score":{"name":"@s","objective":"posX"}}, " ", {"score":{"name":"@s", "objective":"posY"}}, " ", {"score":{"name":"@s","objective":"posZ"}}, " S ", {"score":{"name":"@s", "objective":"theta"}}]
execute as @s[y_rotation=0..45] run title @s actionbar [{"score":{"name":"@s","objective":"posX"}}, " ", {"score":{"name":"@s", "objective":"posY"}}, " ", {"score":{"name":"@s","objective":"posZ"}}, " S ", {"score":{"name":"@s", "objective":"theta"}}]