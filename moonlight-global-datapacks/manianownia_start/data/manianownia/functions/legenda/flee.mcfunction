tag @s add mp_dead
bossbar set manianownia:legenda visible false
tellraw @a [{"text": "⚔ ", "color": "dark_gray"}, {"selector": "@s"}, {"text": " znika w mroku. Następnym razem!", "color": "gray"}]
data merge entity @s {DeathLootTable:"minecraft:empty"}
particle minecraft:large_smoke ~ ~1 ~ 0.5 1 0.5 0.05 60
tp @s ~ -200 ~
kill @s
