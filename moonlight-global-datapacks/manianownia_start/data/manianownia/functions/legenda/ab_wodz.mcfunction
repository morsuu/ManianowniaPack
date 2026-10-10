execute if entity @a[distance=..24] if score #min mp_tmp matches ..3 run summon minecraft:piglin_brute ~1 ~ ~ {Tags:["mp_minion"],IsImmuneToZombification:1b}
playsound minecraft:entity.piglin_brute.angry hostile @a[distance=..32] ~ ~ ~ 1 0.6
scoreboard players set @s mp_lab 0
