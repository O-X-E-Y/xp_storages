recipe take @s xp_storages:xp_storage
advancement revoke @s only xp_storages:craft_storage

execute store result score .count craftedCount run clear @s knowledge_book

execute as @s run function xp_storages:storage/crafting/give_storage_item
