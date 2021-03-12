execute unless entity @e[tag=shows_xp,distance=..0.8] run summon item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Fixed:1b,Tags:["shows_xp"],Item:{}}

execute store result score .show xp run data get block ~ ~-0.2 ~ seed

loot replace entity @e[tag=shows_xp] hotbar.0 loot xp_storages:shows_xp
stopsound @a[distance=..10] * minecraft:entity.item_frame.add_item