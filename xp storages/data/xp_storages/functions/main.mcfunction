function xp_storages:storage/scoreboard

execute as @a[tag=!has_xp_id] run function xp_storages:storage/xp_id

execute as @e[tag=!made_storage,type=item,nbt={OnGround:1b}] if data entity @s Item.tag{xp_storage:1b} at @s if block ~ ~ ~ air run function xp_storages:storage/create_storage

execute as @a at @s if block ~ ~-0.2 ~ structure_block{metadata:"xp_storage",integrity:-3.14f} run function xp_storages:storage/prepare_storage

execute as @a at @s if block ~ ~-0.2 ~ minecraft:structure_block{metadata:"xp_storage"} unless data block ~ ~-0.2 ~ {author:""} run function xp_storages:storage/xp_interact

execute as @e[type=item,tag=!checked_storage_owner,nbt={Item:{id:"minecraft:emerald"},OnGround:1b}] at @s if entity @p[scores={droppedEmerald=1..},distance=..5] if block ~ ~-0.2 ~ structure_block{metadata:"xp_storage"} run function xp_storages:storage/verify_remove_storage

execute as @a[scores={droppedSomething=1..}] at @s anchored eyes facing entity @p[distance=0.1..6] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function xp_storages:swap_items/swap

scoreboard players set @a[scores={droppedSomething=1..}] droppedSomething 0
execute as @e[tag=shows_xp] at @s unless entity @p[distance=..0.8] run kill @s
execute as @a[scores={xpPrepare=1..}] at @s unless block ~ ~-0.2 ~ structure_block{metadata:"xp_storage",integrity:-3.14f} run scoreboard players set @s xpPrepare 0