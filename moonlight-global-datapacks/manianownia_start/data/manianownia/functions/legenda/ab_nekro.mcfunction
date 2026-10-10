execute if entity @a[distance=..24] if score #min mp_tmp matches ..5 run summon minecraft:husk ~1 ~ ~ {Tags:["mp_minion"]}
execute if entity @a[distance=..24] if score #min mp_tmp matches ..5 run summon minecraft:husk ~-1 ~ ~ {Tags:["mp_minion"]}
particle minecraft:soul ~ ~1 ~ 1 0.5 1 0.02 30
playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..32] ~ ~ ~ 1 0.5
scoreboard players set @s mp_lab 0
