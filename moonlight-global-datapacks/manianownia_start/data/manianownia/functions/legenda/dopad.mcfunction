scoreboard players set @s mp_lup 0
particle minecraft:large_smoke ~ ~1 ~ 0.4 0.8 0.4 0.05 40
execute positioned ~-12 ~2.5 ~-12 run tag @a[dx=24,dy=30,dz=24,gamemode=!creative,gamemode=!spectator] add mp_kand
execute unless entity @a[tag=mp_kand] positioned ~-12 ~-30 ~-12 run tag @a[dx=24,dy=27,dz=24,gamemode=!creative,gamemode=!spectator] add mp_kand
tag @a[tag=mp_kand,sort=nearest,limit=1] add mp_cel
tag @a remove mp_kand
tp @s @a[tag=mp_cel,limit=1]
execute at @s run particle minecraft:large_smoke ~ ~1 ~ 0.4 0.8 0.4 0.05 40
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..24] ~ ~ ~ 1 0.5
effect give @a[tag=mp_cel] minecraft:slowness 2 1
tellraw @a[tag=mp_cel] [{"selector": "@s"}, {"text": " dopada cię! Słup nie pomoże.", "color": "red"}]
tag @a remove mp_cel
