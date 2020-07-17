scoreboard players add #tick tick 1

execute as @a store result score @s posX run data get entity @s Pos[0]
execute as @a store result score @s posY run data get entity @s Pos[1]
execute as @a store result score @s posZ run data get entity @s Pos[2]
execute as @a store result score @s theta run data get entity @s Rotation[1] -1

execute as @a[nbt={SelectedItem:{id:"minecraft:ender_pearl"}}] run tag @s remove coordinatesBar

execute as @a[tag=coordinatesBar] run function random_enhancements:coordinates_bar
execute as @a[nbt={SelectedItem:{id:"minecraft:ender_pearl"}}] run function random_enhancements:coordinates_bar_with_angle
execute as @a[nbt={SelectedItem:{id:"minecraft:bow"}}] run function random_enhancements:coordinates_bar_with_angle
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run function random_enhancements:coordinates_bar_with_angle

execute at @a[scores={l=1}] in minecraft:overworld as @a unless entity @s run tellraw @p [{"selector":"@s"}, " - Overworld: ", {"score":{"name":"@s", "objective":"posX"}}, ", ", {"score":{"name":"@s", "objective":"posY"}}, ", ", {"score":{"name":"@s", "objective":"posZ"}}]
execute at @a[scores={l=1}] in minecraft:the_nether as @a unless entity @s run tellraw @p [{"selector":"@s"}, " - Nether: ", {"score":{"name":"@s", "objective":"posX"}}, ", ", {"score":{"name":"@s", "objective":"posY"}}, ", ", {"score":{"name":"@s", "objective":"posZ"}}]
execute at @a[scores={l=1}] in minecraft:the_end as @a unless entity @s run tellraw @p [{"selector":"@s"}, " - The End: ", {"score":{"name":"@s", "objective":"posX"}}, ", ", {"score":{"name":"@s", "objective":"posY"}}, ", ", {"score":{"name":"@s", "objective":"posZ"}}]
scoreboard players set @a l 0

execute if score #tick tick matches 20 run function random_enhancements:second