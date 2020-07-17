scoreboard players set @s rngMin 0
scoreboard players set @s rngMax 29
function random:generate

execute as @s[scores={rng=0}] run tellraw @a "oof"
execute as @s[scores={rng=1}] run tellraw @a "Can I get ughh... Oof?"
execute as @s[scores={rng=2}] run tellraw @a "F"
execute as @s[scores={rng=3}] run tellraw @a "Whoa Mama"
execute as @s[scores={rng=4}] run tellraw @a "§0Nigga§cwatt!?"
execute as @s[scores={rng=5}] run tellraw @a "XD"
execute as @s[scores={rng=6}] run tellraw @a "XDDDDD"
execute as @s[scores={rng=7}] run tellraw @a "§osad gamer noises"
execute as @s[scores={rng=8}] run tellraw @a "§ofucking dies"
execute as @s[scores={rng=9}] run tellraw @a "（ ゜ω 。）"
execute as @s[scores={rng=11}] run tellraw @a ":/"
execute as @s[scores={rng=12}] run tellraw @a "eat my dick"
execute as @s[scores={rng=13}] run tellraw @a "YEET"
execute as @s[scores={rng=14}] run tellraw @a "Bruh"
execute as @s[scores={rng=15}] run tellraw @a "Bruh Sound Effect #2"
execute as @s[scores={rng=16}] run tellraw @a "Press §o§lF§r to Pay Respects"
execute as @s[scores={rng=17}] run tellraw @a "Such a gamer moment..."
execute as @s[scores={rng=18}] run tellraw @a "yote"
execute as @s[scores={rng=19}] run tellraw @a "yee"
execute as @s[scores={rng=20}] run tellraw @a "§c§oKachow!"
execute as @s[scores={rng=21}] run tellraw @a "real bruh moment"
execute as @s[scores={rng=22}] run tellraw @a ":////"
execute as @s[scores={rng=23}] run tellraw @a "this nigga eating beans"
execute as @s[scores={rng=24}] run tellraw @a "lmao"
execute as @s[scores={rng=25}] run tellraw @a "yas queen"
execute as @s[scores={rng=26}] run tellraw @a "okay, now this was not epic"
execute as @s[scores={rng=27}] run tellraw @a "doot doot"
execute as @s[scores={rng=28}] run tellraw @a [{"selector":"@s"}, ", watch out! Oh no they can't hear us they've got airpods in. Oh no."]
execute as @s[scores={rng=29}] run tellraw @a "Oh God Oh Fuck"

scoreboard players operation @s countedDeaths = @s deaths