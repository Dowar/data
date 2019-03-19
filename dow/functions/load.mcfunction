# Initialisation des scoreboard + message de rechargement du datapack
scoreboard objectives add BombeTimer dummy "BombeTimer"
scoreboard objectives add Login minecraft.custom:minecraft.leave_game "Login"
scoreboard objectives add death_timer dummy "death_timer"
scoreboard objectives add item_skin dummy "item_skin"
scoreboard objectives add disk_id dummy "disk_id"
scoreboard objectives add disk_timer dummy "disk_timer"
scoreboard objectives add disk_save dummy "disk_save"
scoreboard objectives add disk_detect dummy "disk_detect"
scoreboard objectives add disk_detect2 dummy "disk_detect2"
scoreboard objectives add disk_use minecraft.custom:minecraft.play_record "disk_use"
tellraw @a [{"text":"[Datapack chargé] ","color":"green"},{"text":"Pack test (par Dowar)","color":"white"}]