execute store result score .verify xpPId run data get block ~ ~-0.2 ~ integrity
execute store result score .stored xp run data get block ~ ~-0.2 ~ seed
execute if score .verify xpPId = @s xpPId if score .stored xp matches 1.. run function xp_storages:storage/interact/extract/extract_xp