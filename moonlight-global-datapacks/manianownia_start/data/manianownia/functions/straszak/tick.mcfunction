schedule function manianownia:straszak/tick 600t replace
execute store result score #dzien mp_tmp run time query day
execute unless score #straszaki_off mp_cfg matches 1 if score #dzien mp_tmp matches 2.. as @a[gamemode=!creative,gamemode=!spectator] at @s run function manianownia:straszak/gracz
