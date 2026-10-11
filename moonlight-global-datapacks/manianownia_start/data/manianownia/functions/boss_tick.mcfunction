execute as @e[type=#manianownia:bosses,tag=!mp_boss2] run function manianownia:boss/init
execute as @e[type=#manianownia:bosses,tag=mp_boss2,tag=!mp_boss3] run function manianownia:boss/wzmocnienie
execute as @e[type=bosses_of_mass_destruction:gauntlet,tag=mp_boss2,tag=!mp_boss4] run function manianownia:boss/rekawica
execute as @e[type=#manianownia:bosses,tag=mp_boss2,tag=!mp_hit] at @s run function manianownia:boss/scale
execute as @e[type=#manianownia:crawler,tag=!mp_cd] run function manianownia:crawler_buff
schedule function manianownia:boss_tick 10t replace
