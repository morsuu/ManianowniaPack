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
execute if entity @s[tag=mp_l_rzeznik,tag=!mp_dead] run scoreboard players set #wys mp_tmp 0
execute if entity @s[tag=mp_l_rzeznik,tag=!mp_dead] positioned ~-12 ~2.5 ~-12 if entity @a[dx=24,dy=30,dz=24,gamemode=!creative,gamemode=!spectator] run scoreboard players set #wys mp_tmp 1
execute if entity @s[tag=mp_l_rzeznik,tag=!mp_dead] positioned ~-12 ~-30 ~-12 if entity @a[dx=24,dy=27,dz=24,gamemode=!creative,gamemode=!spectator] run scoreboard players set #wys mp_tmp 1
execute if entity @s[tag=mp_l_rzeznik,tag=!mp_dead] if score #wys mp_tmp matches 1 run scoreboard players add @s mp_lup 1
execute if entity @s[tag=mp_l_rzeznik,tag=!mp_dead] if score #wys mp_tmp matches 0 run scoreboard players set @s mp_lup 0
execute if entity @s[tag=mp_l_rzeznik,tag=!mp_dead,scores={mp_lup=6..}] run function manianownia:legenda/dopad
execute if entity @s[tag=mp_l_nekro,tag=!mp_dead] run scoreboard players set #wys mp_tmp 0
execute if entity @s[tag=mp_l_nekro,tag=!mp_dead] positioned ~-12 ~2.5 ~-12 if entity @a[dx=24,dy=30,dz=24,gamemode=!creative,gamemode=!spectator] run scoreboard players set #wys mp_tmp 1
execute if entity @s[tag=mp_l_nekro,tag=!mp_dead] positioned ~-12 ~-30 ~-12 if entity @a[dx=24,dy=27,dz=24,gamemode=!creative,gamemode=!spectator] run scoreboard players set #wys mp_tmp 1
execute if entity @s[tag=mp_l_nekro,tag=!mp_dead] if score #wys mp_tmp matches 1 run scoreboard players add @s mp_lup 1
execute if entity @s[tag=mp_l_nekro,tag=!mp_dead] if score #wys mp_tmp matches 0 run scoreboard players set @s mp_lup 0
execute if entity @s[tag=mp_l_nekro,tag=!mp_dead,scores={mp_lup=6..}] run function manianownia:legenda/dopad
execute if entity @s[tag=mp_l_wodz,tag=!mp_dead] run scoreboard players set #wys mp_tmp 0
execute if entity @s[tag=mp_l_wodz,tag=!mp_dead] positioned ~-12 ~2.5 ~-12 if entity @a[dx=24,dy=30,dz=24,gamemode=!creative,gamemode=!spectator] run scoreboard players set #wys mp_tmp 1
execute if entity @s[tag=mp_l_wodz,tag=!mp_dead] positioned ~-12 ~-30 ~-12 if entity @a[dx=24,dy=27,dz=24,gamemode=!creative,gamemode=!spectator] run scoreboard players set #wys mp_tmp 1
execute if entity @s[tag=mp_l_wodz,tag=!mp_dead] if score #wys mp_tmp matches 1 run scoreboard players add @s mp_lup 1
execute if entity @s[tag=mp_l_wodz,tag=!mp_dead] if score #wys mp_tmp matches 0 run scoreboard players set @s mp_lup 0
execute if entity @s[tag=mp_l_wodz,tag=!mp_dead,scores={mp_lup=6..}] run function manianownia:legenda/dopad
execute if entity @s[tag=mp_l_pozeracz,tag=!mp_dead] run scoreboard players set #wys mp_tmp 0
execute if entity @s[tag=mp_l_pozeracz,tag=!mp_dead] positioned ~-12 ~2.5 ~-12 if entity @a[dx=24,dy=30,dz=24,gamemode=!creative,gamemode=!spectator] run scoreboard players set #wys mp_tmp 1
execute if entity @s[tag=mp_l_pozeracz,tag=!mp_dead] positioned ~-12 ~-30 ~-12 if entity @a[dx=24,dy=27,dz=24,gamemode=!creative,gamemode=!spectator] run scoreboard players set #wys mp_tmp 1
execute if entity @s[tag=mp_l_pozeracz,tag=!mp_dead] if score #wys mp_tmp matches 1 run scoreboard players add @s mp_lup 1
execute if entity @s[tag=mp_l_pozeracz,tag=!mp_dead] if score #wys mp_tmp matches 0 run scoreboard players set @s mp_lup 0
execute if entity @s[tag=mp_l_pozeracz,tag=!mp_dead,scores={mp_lup=6..}] run function manianownia:legenda/dopad
execute if entity @s[tag=!mp_dead] if score @s mp_lt matches 1200.. run function manianownia:legenda/flee
