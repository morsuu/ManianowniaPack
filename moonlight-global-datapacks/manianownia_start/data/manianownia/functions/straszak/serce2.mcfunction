execute as @a[tag=mp_s_serce] at @s run playsound minecraft:entity.warden.heartbeat ambient @s ~ ~ ~ 1 0.8
execute as @a[tag=mp_s_serce] run execute at @s rotated as @s positioned ^ ^ ^-3 run playsound minecraft:entity.enderman.stare hostile @s ~ ~ ~ 0.5 0.5
tag @a remove mp_s_serce
