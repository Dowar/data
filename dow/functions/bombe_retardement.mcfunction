# Bombe à retardement qui explose au bout de 3 secondes (Cosmétique)
execute as @e[type=item,nbt={Item:{tag:{display:{Name:"{\"text\":\"Bombe à Retardement\",\"italic\":false}"}}}}] run scoreboard players add @s BombeTimer 1
execute as @e[type=item,scores={BombeTimer=1..20}] run data merge entity @s {CustomName:"{\"text\":\"Timer:3\",\"bold\":true}",CustomNameVisible:1,Health:1000,PickupDelay:999999}
execute as @e[type=item,scores={BombeTimer=21..40}] run data merge entity @s {CustomName:"{\"text\":\"Timer:2\",\"bold\":true}"}
execute as @e[type=item,scores={BombeTimer=41..60}] run data merge entity @s {CustomName:"{\"text\":\"Timer:1\",\"bold\":true}"}
execute as @e[type=item,scores={BombeTimer=61..}] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 10 10 force
execute as @e[type=item,scores={BombeTimer=61..}] at @s run playsound entity.generic.explode hostile @a[distance=..20] ~ ~ ~ 100 1 1
execute as @e[type=item,scores={BombeTimer=61..}] run kill @s