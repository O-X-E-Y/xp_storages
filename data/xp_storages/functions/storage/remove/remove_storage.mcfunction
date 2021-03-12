summon item ~ ~ ~ {Tags:["removed_xp_storage","made_storage"],Item:{id:"minecraft:structure_block",Count:1b,tag:{xp_storage:1b,display:{Name:'{"text":"XP Storage","color":"white","italic":false}'},BlockEntityTag:{metadata:"xp_storage",rotation:"NONE",mirror:"NONE",mode:"SAVE"}}}}

execute as @e[tag=removed_xp_storage] at @s align xz run tp @s ~0.5 ~ ~0.5

execute unless block ~ ~-0.2 ~ structure_block{seed:0L} run summon experience_orb ~ ~0.5 ~ {Tags:["orb_remove_extracted"]}
data modify entity @e[tag=orb_remove_extracted,limit=1,sort=nearest,distance=..1] Value set from block ~ ~-0.2 ~ seed

setblock ~ ~-0.2 ~ air destroy

scoreboard players set @p[scores={droppedEmerald=1..},distance=..5] droppedEmerald 0
playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 1 1

execute unless score .verify xpPId matches -4 store result score @s tempItemCount run data get entity @s Item.Count
execute unless score .verify xpPId matches -4 run scoreboard players remove @s tempItemCount 1
execute unless score .verify xpPId matches -4 store result entity @s Item.Count byte 1 run scoreboard players get @s tempItemCount
data modify entity @s PickupDelay set value 0s
