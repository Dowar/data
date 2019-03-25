###==================
### Simulation Bloc
###==================
# Ajout Bloc Collision 
execute as @e[name=plateforme,tag=!solid,tag=!mouv_h,tag=!mouv_b,tag=!mouv_g,tag=!mouv_d,tag=!mouv_mon,tag=!mouv_des] at @s if block ~ ~ ~ command_block run setblock ~ ~ ~ barrier replace
execute as @e[name=plateforme,tag=!solid,tag=!mouv_h,tag=!mouv_b,tag=!mouv_g,tag=!mouv_d,tag=!mouv_mon,tag=!mouv_des] at @s if block ~ ~ ~ air run setblock ~ ~ ~ barrier replace
# Ajout Solid
execute as @e[name=plateforme,tag=!solid,tag=!mouv_h,tag=!mouv_b,tag=!mouv_g,tag=!mouv_d,tag=!mouv_mon,tag=!mouv_des] at @s if block ~ ~ ~ barrier run tag @s add solid
execute as @e[name=plateforme,tag=solid] at @s align xyz run tp ~0.5 ~ ~0.5
# Suppression Solid
execute as @e[name=plateforme,tag=solid,tag=mouv_mon] at @s if block ~ ~ ~ barrier run tag @s remove solid
execute as @e[name=plateforme,tag=solid,tag=mouv_des] at @s if block ~ ~ ~ barrier run tag @s remove solid
execute as @e[name=plateforme,tag=solid,tag=mouv_h] at @s if block ~ ~ ~ barrier run tag @s remove solid
execute as @e[name=plateforme,tag=solid,tag=mouv_b] at @s if block ~ ~ ~ barrier run tag @s remove solid
execute as @e[name=plateforme,tag=solid,tag=mouv_g] at @s if block ~ ~ ~ barrier run tag @s remove solid
execute as @e[name=plateforme,tag=solid,tag=mouv_d] at @s if block ~ ~ ~ barrier run tag @s remove solid
# Suppression Bloc Collision
execute as @e[name=plateforme,tag=!solid,tag=mouv_mon] at @s if block ~ ~ ~ barrier run setblock ~ ~ ~ air replace
execute as @e[name=plateforme,tag=!solid,tag=mouv_des] at @s if block ~ ~ ~ barrier run setblock ~ ~ ~ air replace
execute as @e[name=plateforme,tag=!solid,tag=mouv_h] at @s if block ~ ~ ~ barrier run setblock ~ ~ ~ air replace
execute as @e[name=plateforme,tag=!solid,tag=mouv_b] at @s if block ~ ~ ~ barrier run setblock ~ ~ ~ air replace
execute as @e[name=plateforme,tag=!solid,tag=mouv_g] at @s if block ~ ~ ~ barrier run setblock ~ ~ ~ air replace
execute as @e[name=plateforme,tag=!solid,tag=mouv_d] at @s if block ~ ~ ~ barrier run setblock ~ ~ ~ air replace
# Destruction Entité Si Bloc Cassé
execute as @e[name=plateforme,tag=solid,tag=!mouv_h,tag=!mouv_b,tag=!mouv_g,tag=!mouv_d,tag=!mouv_mon,tag=!mouv_des] at @s if block ~ ~ ~ air run tag @s add death
execute as @e[name=plateforme,tag=solid,tag=!mouv_h,tag=!mouv_b,tag=!mouv_g,tag=!mouv_d,tag=!mouv_mon,tag=!mouv_des] at @s if block ~ ~ ~ air run tag @e[type=shulker,distance=..0.25] add death
execute as @e[name=plateforme,tag=solid,tag=!mouv_h,tag=!mouv_b,tag=!mouv_g,tag=!mouv_d,tag=!mouv_mon,tag=!mouv_des] at @s if block ~ ~ ~ air run tag @e[type=falling_block,distance=..0.25] add death
execute as @e[tag=death] run tp @s ~ -5 ~
execute as @e[tag=death] run scoreboard players add @s death_timer 1
execute as @e[tag=death,scores={death_timer=5..}] run kill @s
###==================
### Collisions
###==================
# Monter
execute as @e[name=plateforme] at @s if block ~ ~0.975 ~ #dow:no_collision run tag @s remove col_mon
execute as @e[name=plateforme] at @s unless block ~ ~0.975 ~ #dow:no_collision run tag @s add col_mon
execute as @e[name=plateforme,tag=col_mon] run tag @e[name=plateforme] remove mouv_mon
# Descendre
execute as @e[name=plateforme] at @s if block ~ ~-0.125 ~ #dow:no_collision run tag @s remove col_des
execute as @e[name=plateforme] at @s unless block ~ ~-0.125 ~ #dow:no_collision run tag @s add col_des
execute as @e[name=plateforme,tag=col_des] run tag @e[name=plateforme] remove mouv_des
# Haut
execute as @e[name=plateforme] at @s if block ~ ~ ~-0.5 #dow:no_collision run tag @s remove col_h
execute as @e[name=plateforme] at @s unless block ~ ~ ~-0.5 #dow:no_collision run tag @s add col_h
execute as @e[name=plateforme,tag=col_h] run tag @e[name=plateforme] remove mouv_h
# Bas
execute as @e[name=plateforme] at @s if block ~ ~ ~0.5 #dow:no_collision run tag @s remove col_b
execute as @e[name=plateforme] at @s unless block ~ ~ ~0.5 #dow:no_collision run tag @s add col_b
execute as @e[name=plateforme,tag=col_b] run tag @e[name=plateforme] remove mouv_b
# Gauche
execute as @e[name=plateforme] at @s if block ~-0.5 ~ ~ #dow:no_collision run tag @s remove col_g
execute as @e[name=plateforme] at @s unless block ~-0.5 ~ ~ #dow:no_collision run tag @s add col_g
execute as @e[name=plateforme,tag=col_g] run tag @e[name=plateforme] remove mouv_g
# Droite
execute as @e[name=plateforme] at @s if block ~0.5 ~ ~ #dow:no_collision run tag @s remove col_d
execute as @e[name=plateforme] at @s unless block ~0.5 ~ ~ #dow:no_collision run tag @s add col_d
execute as @e[name=plateforme,tag=col_d] run tag @e[name=plateforme] remove mouv_d
###==================
### Mouvement
###==================
# Monter
execute unless entity @e[name=plateforme,tag=col_mon] run execute as @e[name=plateforme,tag=mouv_mon] at @s run tp @s ~ ~0.05 ~
execute as @e[name=!plateforme,type=!falling_block,type=!shulker] at @s if entity @e[name=plateforme,tag=mouv_mon,distance=..1.25] run effect give @s minecraft:levitation 1 255 true
execute as @e[name=!plateforme,type=!falling_block,type=!shulker] at @s if entity @e[name=plateforme,tag=mouv_mon,distance=..1.25] run tp ~ ~0.05 ~
# Descendre
execute unless entity @e[name=plateforme,tag=col_des] run execute as @e[name=plateforme,tag=mouv_des] at @s run tp @s ~ ~-0.05 ~
# Haut
execute unless entity @e[name=plateforme,tag=col_h] run execute as @e[name=plateforme,tag=mouv_h] at @s run tp @s ~ ~ ~-0.05
execute as @e[name=!plateforme,type=!falling_block,type=!shulker] at @s if entity @e[name=plateforme,tag=mouv_h,distance=..1.25] run tp ~ ~ ~-0.05
# Bas
execute unless entity @e[name=plateforme,tag=col_b] run execute as @e[name=plateforme,tag=mouv_b] at @s run tp @s ~ ~ ~0.05
execute as @e[name=!plateforme,type=!falling_block,type=!shulker] at @s if entity @e[name=plateforme,tag=mouv_b,distance=..1.25] run tp ~ ~ ~0.05
# Gauche
execute unless entity @e[name=plateforme,tag=col_g] run execute as @e[name=plateforme,tag=mouv_g] at @s run tp @s ~-0.05 ~ ~
execute as @e[name=!plateforme,type=!falling_block,type=!shulker] at @s if entity @e[name=plateforme,tag=mouv_g,distance=..1.25] run tp ~-0.05 ~ ~
# Droite
execute unless entity @e[name=plateforme,tag=col_d] run execute as @e[name=plateforme,tag=mouv_d] at @s run tp @s ~0.05 ~ ~
execute as @e[name=!plateforme,type=!falling_block,type=!shulker] at @s if entity @e[name=plateforme,tag=mouv_d,distance=..1.25] run tp ~0.05 ~ ~