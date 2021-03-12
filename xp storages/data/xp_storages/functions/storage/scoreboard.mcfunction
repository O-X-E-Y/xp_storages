execute as @a store result score @s xpLevel run xp query @s levels
execute as @a store result score @s xpPoints run xp query @s points

execute as @a run scoreboard players operation @s xp = @s xpLevel

execute as @a[level=1..] run scoreboard players operation @s xp *= @s xp
execute as @a[level=1..] run scoreboard players operation @s xpHelp = @s xpLevel

execute as @a[level=1..16] run scoreboard players operation @s xpHelp *= 6 oxey.const
execute as @a[level=1..16] run scoreboard players operation @s xp += @s xpHelp

execute as @a[level=17..31] run scoreboard players operation @s xp *= 5 oxey.const
execute as @a[level=17..31] run scoreboard players operation @s xpHelp *= 81 oxey.const
execute as @a[level=17..31] run scoreboard players operation @s xp -= @s xpHelp
execute as @a[level=17..31] run scoreboard players operation @s xp /= 2 oxey.const
execute as @a[level=17..31] run scoreboard players operation @s xp += 360 oxey.const

execute as @a[level=32..] run scoreboard players operation @s xp *= 9 oxey.const
execute as @a[level=32..] run scoreboard players operation @s xpHelp *= 325 oxey.const
execute as @a[level=32..] run scoreboard players operation @s xp -= @s xpHelp
execute as @a[level=32..] run scoreboard players operation @s xp /= 2 oxey.const
execute as @a[level=32..] run scoreboard players operation @s xp += 2220 oxey.const

execute as @a run scoreboard players operation @s xp += @s xpPoints