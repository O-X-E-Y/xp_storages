give @s structure_block{xp_storage:1b,display:{Name:'{"text":"XP Storage","color":"white","italic":false}'},BlockEntityTag:{metadata:"xp_storage",rotation:"NONE",mirror:"NONE",mode:"SAVE"}} 1

scoreboard players remove .count craftedCount 1

execute if score .count craftedCount matches 1.. run function xp_storages:storage/crafting/give_storage_item