execute as @a[scores={disk_use=1..,disk_save=1,disk_timer=2..}] run playsound minecraft:music.portal record @a ~ ~ ~ 100 1 1
execute as @a[scores={disk_use=1..,disk_save=1}] run title @a actionbar [{"translate":"record.nowPlaying"},{"translate":"item.minecraft.music_disc_strad1.desc"}]

execute as @a[scores={disk_use=1..,disk_save=2,disk_timer=2..}] run playsound minecraft:music.credits record @a ~ ~ ~ 100 1 1
execute as @a[scores={disk_use=1..,disk_save=2}] run title @a actionbar [{"translate":"record.nowPlaying"},{"translate":"item.minecraft.music_disc_strad2.desc"}]

execute as @a[scores={disk_use=1..,disk_save=3,disk_timer=2..}] run playsound minecraft:music.dragon record @a ~ ~ ~ 100 1 1
execute as @a[scores={disk_use=1..,disk_save=3}] run title @a actionbar [{"translate":"record.nowPlaying"},{"translate":"item.minecraft.music_disc_strad3.desc"}]

execute as @a[scores={disk_use=1..,disk_save=4,disk_timer=2..}] run playsound minecraft:music.sail record @a ~ ~ ~ 100 1 1
execute as @a[scores={disk_use=1..,disk_save=4}] run title @a actionbar [{"translate":"record.nowPlaying"},{"translate":"item.minecraft.music_disc_strad4.desc"}]