schedule function manianownia:legenda/roll 2400t replace
execute unless entity @e[tag=mp_legend] if predicate manianownia:szansa_legendy as @e[type=minecraft:player,sort=random,limit=1,gamemode=!creative,gamemode=!spectator,advancements={minecraft:story/enter_the_nether=true},predicate=manianownia:w_overworld] at @s if entity @s[y=50,dy=400] run function manianownia:legenda/spawn
