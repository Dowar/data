# Start Détection disque
execute as @a store result score @s item_skin run data get entity @s SelectedItem.tag.CustomModelData
execute as @a[nbt={SelectedItem:{id:"minecraft:music_disc_strad"}}] run scoreboard players operation @s disk_id = @s item_skin
execute as @a[nbt=!{SelectedItem:{id:"minecraft:music_disc_strad"}},nbt={SelectedItem:{}}] run scoreboard players set @s disk_id 0
# Stop musique si disque sortie
execute store result score @e[type=item,nbt={Item:{id:"minecraft:music_disc_strad"}}] disk_detect run data get entity @e[type=item,limit=1] PickupDelay
execute store result score @e[type=item,nbt={Item:{id:"minecraft:music_disc_strad"}}] disk_detect2 run data get entity @e[type=item,limit=1] Age
execute as @e[scores={disk_detect=1..5,disk_detect2=..10}] at @s run stopsound @a record
# Stop musique du disque vanilla si disque inséré
execute as @a[scores={disk_use=1..,disk_id=1..,disk_timer=0}] at @s run scoreboard players operation @s disk_save = @s disk_id
execute as @a[scores={disk_use=1..,disk_save=1..,disk_timer=..4}] at @s run stopsound @a record
# Start musique custom
execute as @a[scores={disk_use=1..,disk_save=1..}] at @s run scoreboard players add @s disk_timer 1
execute as @a[scores={disk_use=1..,disk_save=1..}] at @s run function dow:jukebox_start
# Reset Détection disque
execute as @a[scores={disk_use=1..,disk_timer=5..}] run scoreboard players set @s disk_use 0
execute as @a[scores={disk_use=1..,disk_id=0}] run scoreboard players set @s disk_use 0
execute as @a[scores={disk_use=0}] run scoreboard players set @s disk_timer 0
execute as @a[scores={disk_use=0}] run scoreboard players set @s disk_save 0