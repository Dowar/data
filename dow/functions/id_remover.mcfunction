# Reinitialisation
execute run scoreboard players set total_id player_id 0
execute run scoreboard players set total_id_checked player_id 0
execute positioned 0 0 0 as @p[tag=id_get] run scoreboard players reset @s player_id
execute positioned 0 0 0 as @p[tag=id_get] run tag @s remove id_get