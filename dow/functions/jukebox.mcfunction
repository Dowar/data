# Détection disque
execute as @a store result score @s item_skin run data get entity @s SelectedItem.tag.CustomModelData
execute as @a[nbt={SelectedItem:{id:"minecraft:music_disc_strad"}}] run scoreboard players operation @s disk_id = @s item_skin
execute as @a[nbt=!{SelectedItem:{id:"minecraft:music_disc_strad"}},nbt={SelectedItem:{}}] run scoreboard players set @s disk_id 0
# Stop music
execute store result score @e[type=item,nbt={Item:{id:"minecraft:music_disc_strad"}}] disk_detect run data get entity @e[type=item,limit=1] PickupDelay
execute store result score @e[type=item,nbt={Item:{id:"minecraft:music_disc_strad"}}] disk_detect2 run data get entity @e[type=item,limit=1] Age
execute as @e[scores={disk_detect=1..5,disk_detect2=..10}] at @s run stopsound @a[distance=..50] record

execute as @a[scores={disk_use=1..,disk_id=1..,disk_timer=0}] at @s run scoreboard players operation @s disk_save = @s disk_id
execute as @a[scores={disk_use=1..,disk_save=1..,disk_timer=0}] at @s run stopsound @a[distance=..50] record
execute as @a[scores={disk_use=1..,disk_save=1..,disk_timer=0..}] at @s run scoreboard players add @s disk_timer 1
# Start music
execute as @a[scores={disk_use=1..,disk_save=1,disk_timer=1..}] run playsound minecraft:music.portal record @a ~ ~ ~ 100 1 1
execute as @a[scores={disk_use=1..,disk_save=2,disk_timer=1..}] run playsound minecraft:music.credits record @a ~ ~ ~ 100 1 1
execute as @a[scores={disk_use=1..,disk_save=3,disk_timer=1..}] run playsound minecraft:music.dragon record @a ~ ~ ~ 100 1 1
execute as @a[scores={disk_use=1..,disk_save=4,disk_timer=1..}] run playsound minecraft:music.sail record @a ~ ~ ~ 100 1 1

execute as @a[scores={disk_use=1..,disk_save=1}] run title @a actionbar [{"translate":"record.nowPlaying"},{"translate":"item.minecraft.music_disc_strad1.desc"}]
execute as @a[scores={disk_use=1..,disk_save=2}] run title @a actionbar [{"translate":"record.nowPlaying"},{"translate":"item.minecraft.music_disc_strad2.desc"}]
execute as @a[scores={disk_use=1..,disk_save=3}] run title @a actionbar [{"translate":"record.nowPlaying"},{"translate":"item.minecraft.music_disc_strad3.desc"}]
execute as @a[scores={disk_use=1..,disk_save=4}] run title @a actionbar [{"translate":"record.nowPlaying"},{"translate":"item.minecraft.music_disc_strad4.desc"}]

# Détection reset
execute as @a[scores={disk_use=1..,disk_timer=1..}] run scoreboard players set @s disk_use 0
execute as @a[scores={disk_use=1..,disk_id=0}] run scoreboard players set @s disk_use 0
execute as @a[scores={disk_use=0}] run scoreboard players set @s disk_timer 0
execute as @a[scores={disk_use=0}] run scoreboard players set @s disk_save 0