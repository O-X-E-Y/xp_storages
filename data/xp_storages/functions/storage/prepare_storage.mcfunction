scoreboard players add @s xpPrepare 1
scoreboard players operation @s xpPrepareDisplay = @s xpPrepare
scoreboard players operation @s xpPrepareDisplay %= 10 oxey.const

title @s times 0 30 30

execute as @s[scores={xpPrepareDisplay=1,xpPrepare=1}] run title @s subtitle [{"text":"Preparing XP Storage: 0%","color":"green"}]
title @s[scores={xpPrepareDisplay=1,xpPrepare=1}] title {"text":""}

execute as @s[scores={xpPrepareDisplay=0}] run title @s subtitle [{"text":"Preparing XP Storage: ","color":"green"},{"score":{"name":"@s","objective":"xpPrepare"}},{"text":"%"}]
title @s[scores={xpPrepareDisplay=0}] title {"text":""}

execute as @s[scores={xpPrepareDisplay=1,xpPrepare=1}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.5
execute as @s[scores={xpPrepareDisplay=0,xpPrepare=10}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.55
execute as @s[scores={xpPrepareDisplay=0,xpPrepare=20}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.6
execute as @s[scores={xpPrepareDisplay=0,xpPrepare=30}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.65
execute as @s[scores={xpPrepareDisplay=0,xpPrepare=40}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.7
execute as @s[scores={xpPrepareDisplay=0,xpPrepare=50}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
execute as @s[scores={xpPrepareDisplay=0,xpPrepare=60}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.8
execute as @s[scores={xpPrepareDisplay=0,xpPrepare=70}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.85
execute as @s[scores={xpPrepareDisplay=0,xpPrepare=80}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.9
execute as @s[scores={xpPrepareDisplay=0,xpPrepare=90}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.95
execute as @s[scores={xpPrepareDisplay=0,xpPrepare=100}] run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.7 1

execute as @s[scores={xpPrepare=100}] at @s run function xp_storages:storage/make/make_storage