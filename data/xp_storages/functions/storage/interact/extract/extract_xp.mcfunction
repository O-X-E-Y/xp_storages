execute if score .stored xp matches 26.. run function xp_storages:storage/interact/extract/extract_standard
execute if score .stored xp matches 1..25 run function xp_storages:storage/interact/extract/extract_last_bit

execute store result block ~ ~-0.2 ~ seed long 1 run scoreboard players get .stored xp