
execute if block ~ ~ ~ #dow:air_block positioned ^ ^ ^0.25 run function dow:raycasting
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.0001 1 force
#execute unless block ~ ~ ~ air run setblock ~ ~1 ~ dead_bush keep
#execute run kill @e[type=zombie,distance=..1]
execute unless block ~ ~ ~ #dow:air_block positioned ^ ^ ^0.25 run tp @s ~ ~1 ~