execute as @s[predicate=xp_storages:xp_store] at @s run function xp_storages:storage/interact/store_xp

execute as @s[predicate=xp_storages:xp_extract] at @s run function xp_storages:storage/interact/verify_extract

function xp_storages:storage/interact/show_xp