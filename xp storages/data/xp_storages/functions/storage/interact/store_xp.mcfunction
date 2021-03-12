execute store result score .stored xp run data get block ~ ~-0.2 ~ seed

execute as @s[scores={xp=10..}] run scoreboard players add .stored xp 10
execute as @s[scores={xp=..9}] run scoreboard players operation .stored xp += @s xp

execute store result block ~ ~-0.2 ~ seed long 1 run scoreboard players get .stored xp

xp add @s -10