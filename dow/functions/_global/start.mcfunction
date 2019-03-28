# Gestion des fonctions (pour éviter les boucles inutile)
execute if entity @e[type=item,nbt={Item:{tag:{display:{Name:"{\"text\":\"Bombe à Retardement\",\"italic\":false}"}}}}] run function dow:custom_item/bombe_retardement
execute if entity @e[scores={Login=0..}] run function dow:_global/motd
execute if entity @e[name=plateforme,type=armor_stand] run function dow:plateforme/logic
execute if entity @e[type=player] run function dow:custom_jukebox/system
execute if entity @e[type=player] run function dow:custom_id/bossbar_update
execute if entity @e[type=item] run function dow:custom_display/item_holoname
execute run function dow:custom_id/system
execute run function dow:custom_item/right_click