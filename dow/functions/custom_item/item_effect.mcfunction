execute as @e[type=#dow:ender_effect,nbt={Item:{tag:{CustomModelData:1}}},nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] at @s run particle minecraft:portal ~ ~0.25 ~  0 0 0.25 1 normal
execute as @e[type=#dow:ender_effect,nbt={Item:{tag:{CustomModelData:1}}},nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] at @s run playsound minecraft:entity.ender_dragon.ambient neutral @a ~ ~ ~ 0.025 0 0

execute as @e[type=#dow:ender_effect,nbt={Item:{tag:{CustomModelData:2}}},nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] at @s run particle minecraft:end_rod ~ ~0.25 ~  0 0 0.025 1 normal

schedule function dow:custom_item/item_effect 5t