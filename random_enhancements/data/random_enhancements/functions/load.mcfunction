scoreboard objectives add l trigger "Locate"
scoreboard objectives add c trigger "Coordinates Bar"

scoreboard objectives add deaths deathCount "Deaths"
scoreboard objectives add posX dummy "X Coordinate"
scoreboard objectives add posY dummy "Y Coordinate"
scoreboard objectives add posZ dummy "Z Coordinate"
scoreboard objectives add theta dummy "X Rotation"
scoreboard objectives add tick dummy "Time number"
scoreboard objectives add sinceRest minecraft.custom:minecraft.time_since_rest "Time Since Rest"

scoreboard players set #tick tick 0

scoreboard objectives add countedDeaths dummy