execute as @a[tag=mp_s_drzwi] run execute at @s rotated as @s positioned ^ ^ ^-6 run playsound minecraft:entity.zombie.attack_wooden_door hostile @s ~ ~ ~ 0.8 0.7
execute as @a[tag=mp_s_drzwi] run execute at @s rotated as @s positioned ^ ^ ^-6 run playsound minecraft:block.wooden_door.close ambient @s ~ ~ ~ 1.0 0.6
tag @a remove mp_s_drzwi
