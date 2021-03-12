setblock ~ ~ ~ minecraft:structure_block{mode:"SAVE",metadata:"xp_storage",integrity:-3.14f}

summon area_effect_cloud ~ ~ ~ {Tags:[xp_celebration_rocket],Duration:0}
execute as @e[tag=xp_celebration_rocket] at @s align xyz run tp @s ~0.5 ~0.5 ~0.5
execute at @e[tag=xp_celebration_rocket] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;9305955],FadeColors:[I;2883338]}]}}}}

execute store result score @s tempItemCount run data get entity @s Item.Count
scoreboard players remove @s tempItemCount 1
execute store result entity @s Item.Count byte 1 run scoreboard players get @s tempItemCount

playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 1

tag @s add made_storage