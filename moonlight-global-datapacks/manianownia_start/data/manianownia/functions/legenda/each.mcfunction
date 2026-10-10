scoreboard players add @s mp_lt 1
scoreboard players add @s mp_lab 1
execute store result bossbar manianownia:legenda value run data get entity @s Health
bossbar set manianownia:legenda players @a[distance=..64]
execute store result score #min mp_tmp if entity @e[tag=mp_minion,distance=..32]
execute if entity @s[tag=mp_l_rzeznik,tag=!mp_dead,scores={mp_lab=24..}] run function manianownia:legenda/ab_rzeznik
execute if entity @s[tag=mp_l_nekro,tag=!mp_dead,scores={mp_lab=30..}] run function manianownia:legenda/ab_nekro
execute if entity @s[tag=mp_l_wiedzma,tag=!mp_dead,scores={mp_lab=16..}] run function manianownia:legenda/ab_wiedzma
execute if entity @s[tag=mp_l_wodz,tag=!mp_dead,scores={mp_lab=40..}] run function manianownia:legenda/ab_wodz
execute if entity @s[tag=mp_l_lowca,tag=!mp_dead,scores={mp_lab=30..}] run function manianownia:legenda/ab_lowca
execute if entity @s[tag=mp_l_pozeracz,tag=!mp_dead,scores={mp_lab=30..}] run function manianownia:legenda/ab_pozeracz
execute if entity @s[tag=!mp_dead] if score @s mp_lt matches 1200.. run function manianownia:legenda/flee
