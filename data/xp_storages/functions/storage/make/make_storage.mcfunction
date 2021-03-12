title @s title {"text":"Storage ready!","color":"green"}

execute store result block ~ ~-1 ~ integrity float 1 run scoreboard players get @s xpPId

setblock ~ 0 ~ shulker_box
loot insert ~ 0 ~ loot xp_storages:get_player_head
data modify block ~ ~-0.2 ~ author set from block ~ 0 ~ Items[0].tag.SkullOwner.Name

schedule function xp_storages:storage/reset_title_times 70t

scoreboard players set @s xpPrepare 0
scoreboard players set @s xpPrepareDisplay 0