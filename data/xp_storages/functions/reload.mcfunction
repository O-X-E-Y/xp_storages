say reloaded xp_storages stuff!

###############################################################

execute unless score 0 oxey.const matches 0 run scoreboard objectives remove oxey.const

scoreboard objectives remove xp
scoreboard objectives remove xpLevel
scoreboard objectives remove xpPoints
scoreboard objectives remove xpHelp

scoreboard objectives remove xpPId
scoreboard objectives remove xpPrepare
scoreboard objectives remove xpPrepareDisplay

scoreboard objectives remove tempItemCount
scoreboard objectives remove droppedEmerald
scoreboard objectives remove droppedSomething

scoreboard objectives remove craftedCount

###############################################################

scoreboard objectives add oxey.const dummy

scoreboard objectives add xp dummy
scoreboard objectives add xpLevel dummy
scoreboard objectives add xpPoints dummy
scoreboard objectives add xpHelp dummy

scoreboard objectives add craftedCount dummy

scoreboard objectives add tempItemCount dummy

scoreboard objectives add droppedEmerald minecraft.dropped:minecraft.emerald
scoreboard objectives add xpPId dummy
scoreboard objectives add xpPrepare dummy
scoreboard objectives add xpPrepareDisplay dummy

scoreboard objectives add droppedSomething minecraft.custom:minecraft.drop

###############################################################

scoreboard players set 0 oxey.const 0

scoreboard players set 2 oxey.const 2
scoreboard players set 3 oxey.const 3
scoreboard players set 4 oxey.const 4
scoreboard players set 5 oxey.const 5
scoreboard players set 6 oxey.const 6
scoreboard players set 7 oxey.const 7
scoreboard players set 8 oxey.const 8
scoreboard players set 9 oxey.const 9

scoreboard players set 10 oxey.const 10
scoreboard players set 20 oxey.const 20
scoreboard players set 50 oxey.const 50
scoreboard players set 81 oxey.const 81

scoreboard players set 100 oxey.const 100
scoreboard players set 200 oxey.const 200
scoreboard players set 325 oxey.const 325
scoreboard players set 360 oxey.const 360
scoreboard players set 625 oxey.const 625

scoreboard players set 1000 oxey.const 1000
scoreboard players set 2220 oxey.const 2220

scoreboard players set 24000 oxey.const 24000

###############################################################

scoreboard players set .next xpPId 0
tag @a remove has_xp_id
function xp_storage:storages/xp_id

###############################################################

tellraw @p [{"text":"\n","color":"#C0FF9C"},{"text":"--- XP STORAGES ---","color":"green","bold":true},{"text":"\n\nBy Oxey","color":"red","bold":true,"italic":true},{"text":"\n\n-You can get everything you need ","color":"white"},{"text":"here","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute if entity @s[gamemode=creative] run function xp_storages:storage/starter"}},{"text":" if you're in creative.","color":"white"},{"text":"\n\nHow to use:","color":"dark_purple","bold":true},{"text":"\n\nRecipe can be found ","color":"white"},{"text":"here","color":"gold","bold":true,"clickEvent":{"action":"open_url","value":"https://raw.githubusercontent.com/O-X-E-Y/xp_storages/main/storage_recipe.jpg"}},{"text":" (any combination of obsidian works)","color":"white"},{"text":"\n\n-Throw the XP Storage on the ground to place it."},{"text":"\n\n-To activate it, stand on top of it. This will link the storage to you."},{"text":"\n\n-To store xp, crouch while on top."},{"text":"\n\n-To extract xp, crouch on top while holding a glass bottle."},{"text":"\n\n-To remove it, throw an emerald on top of it. If the storage was activated, this will consume the emerald."},{"text":"\n\n-The storages are bound to player IDs. This means you can't extract xp from or remove other player's storages."},{"text":"\n\n-To give other players the storage without it activating, look at their eyes while standing within 6 blocks away."},{"text":"\n\nYou might lose one xp occasionally. I want to assure you that this is not a\nbug, it's a feature! :)\nIf you find any other bugs, be sure to tell me about them.\n\nAlso, before I forget:\nHave fun with these :)","color":"dark_green"}]
