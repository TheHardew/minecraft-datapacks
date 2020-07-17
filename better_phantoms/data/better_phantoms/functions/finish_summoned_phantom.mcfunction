scoreboard players set @s rngMin 0 
scoreboard players set @s rngMax 255 
function random:generate
execute as @s[scores={rng=0..25}] run effect give @e[tag=riding, limit=1] minecraft:invisibility 60 0 false

execute store result entity @e[tag=processing, limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=processing, limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
execute store result entity @e[tag=processing, limit=1] Motion[0] float 1 run data get entity @s Motion[0]
execute store result entity @e[tag=processing, limit=1] Motion[1] float 1 run data get entity @s Motion[1]
execute store result entity @e[tag=processing, limit=1] Motion[2] float 1 run data get entity @s Motion[2]
tp ~ -32 ~
kill @s