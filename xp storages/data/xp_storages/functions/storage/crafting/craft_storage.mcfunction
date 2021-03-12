advancement revoke @a[tag=crafted_storage] only xp_storages:craft_storage
recipe take @a[tag=crafted_storage] xp_storages:xp_storage

execute store result score .count craftedCount run clear @a[tag=crafted_storage] knowledge_book

execute as @a[tag=crafted_storage] run function xp_storages:storage/crafting/give_storage_item

tag @a[tag=crafted_storage] remove crafted_storage