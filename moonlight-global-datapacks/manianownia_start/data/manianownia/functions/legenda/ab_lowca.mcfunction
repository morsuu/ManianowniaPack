effect give @s minecraft:invisibility 3 0 true
effect give @s minecraft:speed 3 2 true
particle minecraft:large_smoke ~ ~1 ~ 0.5 1 0.5 0.02 30
playsound minecraft:entity.enderman.teleport hostile @a[distance=..32] ~ ~ ~ 1 0.5
scoreboard players set @s mp_lab 0
