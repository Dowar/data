# Attribution ID et incrémentation ID Total
execute run scoreboard players add total_id player_id 1
execute positioned 0 0 0 as @p[tag=!id_get,limit=1] run scoreboard players operation @s player_id = total_id player_id
execute positioned 0 0 0 as @p[tag=!id_get,limit=1] run tag @s add id_get
# Attribution BossBar pour interface custom
execute run bossbar set minecraft:1 players @p[scores={player_id=1}]
execute run bossbar set minecraft:2 players @p[scores={player_id=2}]
execute run bossbar set minecraft:3 players @p[scores={player_id=3}]
execute run bossbar set minecraft:4 players @p[scores={player_id=4}]
execute run bossbar set minecraft:5 players @p[scores={player_id=5}]
execute run bossbar set minecraft:6 players @p[scores={player_id=6}]
execute run bossbar set minecraft:7 players @p[scores={player_id=7}]
execute run bossbar set minecraft:8 players @p[scores={player_id=8}]
execute run bossbar set minecraft:9 players @p[scores={player_id=9}]
execute run bossbar set minecraft:10 players @p[scores={player_id=10}]