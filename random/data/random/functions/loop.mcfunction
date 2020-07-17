scoreboard players operation @s register0 += @e[tag=randomBit, limit=1, sort=random] register0
scoreboard players operation @e[tag=oneBit] register0 *= #constant2 constant
scoreboard players operation @s register1 /= #constant2 constant
scoreboard players operation @s register3 *= #constant2 constant
execute if score @s register1 matches 1.. run function random:loop