schedule function manianownia:legenda/tick 10t replace
execute unless entity @e[tag=mp_legend,tag=!mp_dead] run bossbar set manianownia:legenda visible false
execute as @e[tag=mp_legend,tag=!mp_dead] at @s run function manianownia:legenda/each
