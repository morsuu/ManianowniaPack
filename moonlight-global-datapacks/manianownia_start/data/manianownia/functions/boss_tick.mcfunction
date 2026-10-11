execute as @e[type=#manianownia:bosses,tag=!mp_boss2] run function manianownia:boss/init
execute as @e[type=#manianownia:bosses,tag=mp_boss2,tag=!mp_hit] at @s run function manianownia:boss/scale
schedule function manianownia:boss_tick 10t replace
