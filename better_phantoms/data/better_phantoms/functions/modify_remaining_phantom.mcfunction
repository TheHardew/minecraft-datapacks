scoreboard players set @s rngMin 0 
scoreboard players set @s rngMax 255 
function random:generate
execute as @s[scores={rng=0..12}] run effect give @s minecraft:invisibility 60 0 false

function random:generate
scoreboard players operation @s register0 = @p sinceRest
scoreboard players operation @s register0 /= #constant24000 constant
scoreboard players remove @s register0 8
scoreboard players operation @s register1 = @s rng
scoreboard players operation @s register1 *= @s register0
scoreboard players operation @s register0 *= #constant256 constant
scoreboard players operation @s register0 /= #constant10 constant
scoreboard players operation @s register1 *= #constant19 constant
scoreboard players operation @s register1 /= #constant400 constant
scoreboard players operation @s rng += @s register0
scoreboard players operation @s rng -= @s register1
scoreboard players operation @s rng -= #constant128 constant
scoreboard players operation @s rng /= #constant4 constant

execute as @s[scores={rng=..-1}] run scoreboard players set @s rng 0
execute as @s[scores={rng=65..}] run scoreboard players set @s rng 64

execute store result entity @s Size int 1 run scoreboard players get @s rng
scoreboard players add @s rng 9
execute store result entity @s Attributes[7].Base int 1 run scoreboard players get @s rng
scoreboard players add @s rng 11
execute store result entity @s Attributes[5].Base int 1 run scoreboard players get @s rng
execute store result entity @s Attributes[2].Base float 0.05 run scoreboard players get @s rng
scoreboard players remove @s rng 15
execute store result entity @s Attributes[0].Base int 4 run scoreboard players get @s rng
execute store result entity @s Health int 4 run scoreboard players get @s rng

scoreboard players reset @s

tag @e[tag=riding, limit=1] remove riding
tag @s add processed
tag @s remove processing