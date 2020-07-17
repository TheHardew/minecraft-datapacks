scoreboard players enable @a l
scoreboard players enable @a c

execute as @a[scores={c=1}] run tag @s add coordinatesBar
execute as @a[scores={posY=10..15}] run tag @s add coordinatesBar
execute as @a[scores={c=2}] run scoreboard players set @s c 0
execute as @a[scores={c=0, posY=0..9}] run tag @s remove coordinatesBar
execute as @a[scores={c=0, posY=14..255}] run tag @s remove coordinatesBar

scoreboard players set #tick tick 0

execute as @a if score @s countedDeaths < @s deaths run function random_enhancements:print_death_message

execute as @e[type=minecraft:phantom, tag=!processed] run function better_phantoms:process_phantom