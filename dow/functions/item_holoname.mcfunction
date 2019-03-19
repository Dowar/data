execute as @e[type=item] at @s run data modify entity @s CustomName set from entity @s Item.tag.display.Name
execute as @e[type=item] at @s run data merge entity @s {CustomNameVisible:1}