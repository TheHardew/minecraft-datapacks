scoreboard players set @s rng 0

scoreboard players operation @s register1 = @s rngMax
scoreboard players operation @s register1 -= @s rngMin
scoreboard players operation @s register2 = @s register1

scoreboard players set @s register3 1
scoreboard players set @s register0 0

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647, Tags:[randomBit]}
scoreboard players set @e[tag=randomBit, limit=1] register0 0
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647, Tags:[oneBit, randomBit]}
scoreboard players set @e[tag=oneBit, limit=1] register0 1
function random:loop
kill @e[tag=randomBit]

scoreboard players remove @s register3 1
scoreboard players operation @s register3 *= #constant2 constant
scoreboard players operation @s register2 *= #constant2 constant
scoreboard players operation @s register0 *= @s register2
scoreboard players operation @s register3 /= #constant2 constant
scoreboard players operation @s register0 += @s register3
scoreboard players operation @s register3 *= #constant2 constant
scoreboard players operation @s register0 /= @s register3
scoreboard players operation @s register0 += @s rngMin

scoreboard players operation @s rng = @s register0