# Gestion des fonctions (pour éviter les boucles inutile)
execute if entity @e[type=item,nbt={Item:{tag:{display:{Name:"{\"text\":\"Bombe à Retardement\",\"italic\":false}"}}}}] run function dow:bombe_retardement
execute if entity @e[scores={Login=0..}] run function dow:motd
execute if entity @e[name=plateforme,type=armor_stand] run function dow:plateforme
execute if entity @e[type=player] run function dow:jukebox
execute if entity @e[type=player] run function dow:bossbar_update
execute if entity @e[type=item] run function dow:item_holoname
execute run function dow:id_system
execute run function dow:right_click