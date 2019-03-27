execute align xyz unless block ~ ~ ~ #dow:raycast_ignore positioned ~ ~1 ~ run function dow:raycasting_tp
execute if block ~ ~ ~ #dow:raycast_ignore align xyz run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.5 1 0
execute if block ~ ~ ~ #dow:raycast_ignore align xyz run tp @s ~0.5 ~ ~0.5