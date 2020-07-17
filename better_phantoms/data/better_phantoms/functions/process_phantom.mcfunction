scoreboard players set @s rngMin 0 
scoreboard players set @s rngMax 255 
function random:generate

execute at @s[scores={rng=0..12}] run summon minecraft:phantom ~ ~ ~ {Tags:[processing], Passengers:[{Tags:[riding], id:"minecraft:skeleton", HandItems:[{id:"minecraft:bow", Count:1}]}]}
execute at @s[scores={rng=13}] run summon minecraft:phantom ~ ~ ~ {Tags:[processing], Passengers:[{Tags:[riding], id:"minecraft:elder_guardian", DeathLootTable:"better_phantoms:entities/elder_guardian"}]}
execute at @s[scores={rng=14..21}] run summon minecraft:phantom ~ ~ ~ {Tags:[processing], Passengers:[{Tags:[riding], id:"minecraft:witch"}]}
execute at @s[scores={rng=22..26}] run summon minecraft:phantom ~ ~ ~ {Tags:[processing], Passengers:[{Tags:[riding], id:"minecraft:guardian"}]}
execute at @s[scores={rng=27..29}] run summon minecraft:phantom ~ ~ ~ {Tags:[processing], Passengers:[{Tags:[riding], id:"minecraft:shulker", DeathLootTable:"minecraft:empty", Color:11}]}
execute at @s[scores={rng=30..34}] run summon minecraft:phantom ~ ~ ~ {Tags:[processing], Passengers:[{Tags:[riding], id:"minecraft:phantom"}]}
execute at @s[scores={rng=35..42}] run summon minecraft:phantom ~ ~ ~ {Tags:[processing], Passengers:[{Tags:[riding], id:"minecraft:creeper"}]}
execute at @s[scores={rng=43..50}] run summon minecraft:phantom ~ ~ ~ {Tags:[processing], Passengers:[{Tags:[riding], id:"minecraft:pillager", HandItems:[{id:"minecraft:crossbow", Count:1}]}]}
execute at @s[scores={rng=51}] run summon minecraft:phantom ~ ~ ~ {Tags:[processing], Passengers:[{Tags:[riding], id:"minecraft:ravager", Passengers:[{Tags:[riding], id:"minecraft:pillager", HandItems:[{id:"minecraft:crossbow", Count:1}]}]}]}
execute at @s[scores={rng=52..54}] run summon minecraft:phantom ~ ~ ~ {Tags:[processing], Passengers:[{Tags:[riding], id:"minecraft:evoker", DeathLootTable:"better_phantoms:entities/evoker"}]}
execute at @s[scores={rng=55..57}] run summon minecraft:phantom ~ ~ ~ {Tags:[processing], Passengers:[{Tags:[riding], id:"minecraft:illusioner"}]}
execute at @s[scores={rng=58..60}] run summon minecraft:phantom ~ ~ ~ {Tags:[processing], Passengers:[{Tags:[riding], id:"minecraft:drowned", HandItems:[{id:"minecraft:trident", Count:1}], HandDropChances:[-1f, -1f]}]}

execute as @s[scores={rng=0..60}] run function better_phantoms:finish_summoned_phantom
tag @s add processing

execute as @e[tag=processing, limit=1] run function better_phantoms:modify_remaining_phantom