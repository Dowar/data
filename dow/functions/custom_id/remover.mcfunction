# Reinitialisation
execute run scoreboard objectives remove player_id
execute run scoreboard objectives add player_id dummy "player_id"
execute positioned 0 0 0 as @e[type=player,tag=id_get] run tag @s remove id_get