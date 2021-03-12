data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s,Motion:[0.0d,0.0d,0.0d],OnGround:1b}
execute at @s as @p[distance=0.1..] run tp @e[type=item,limit=1,sort=nearest] @s
scoreboard players set @s droppedSomething 0