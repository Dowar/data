# Attribution ID lors de la connexion
execute positioned 0 0 0 as @p[tag=!id_get] run function dow:id_giver
# Verification ID inutilisé
execute as @p[tag=id_get] run tag @s remove id_checked
execute store result score total_id_checked player_id run tag @p[tag=id_get] add id_checked
# Mise à jour si ID inutilisé
execute unless score total_id player_id = total_id_checked player_id run function dow:id_remover