execute store result score .verify xpPId run data get block ~ ~-0.2 ~ integrity
execute store result score .activated xpPId run data get block ~ ~ ~-0.2 author

execute if score .verify xpPId = @p[scores={droppedEmerald=1..},distance=..5] xpPId run function xp_storages:storage/remove/remove_storage
execute if score .verify xpPId matches -4 run function xp_storages:storage/remove/remove_storage

tag @s add checked_storage_owner