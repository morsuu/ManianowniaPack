advancement revoke @s only manianownia:straszaki/nie_sam
advancement revoke @s only manianownia:straszaki/patrzy
advancement revoke @s only manianownia:straszaki/pusty_dom
advancement revoke @s only manianownia:straszaki/pochodnia
advancement revoke @s only manianownia:straszaki/imie
advancement revoke @s only manianownia:straszaki/null
summon minecraft:marker ~ ~ ~ {Tags:["mp_rng"]}
execute store result score #r mp_tmp run data get entity @e[type=minecraft:marker,tag=mp_rng,limit=1] UUID[0]
kill @e[type=minecraft:marker,tag=mp_rng]
scoreboard players set #mod mp_tmp 8
scoreboard players operation #r mp_tmp %= #mod mp_tmp
execute if score #r mp_tmp matches ..-1 run scoreboard players operation #r mp_tmp += #mod mp_tmp
scoreboard players operation #ev mp_tmp = #r mp_tmp
execute if score #ev mp_tmp matches 0 run function manianownia:straszak/szept
execute if score #ev mp_tmp matches 1 run function manianownia:straszak/szept
execute if score #ev mp_tmp matches 2 run function manianownia:straszak/kroki
execute if score #ev mp_tmp matches 3 run function manianownia:straszak/drzwi
execute if score #ev mp_tmp matches 4 run function manianownia:straszak/serce
execute if score #ev mp_tmp matches 5 run function manianownia:straszak/daleko
execute if score #ev mp_tmp matches 6 run function manianownia:straszak/daleko
execute if score #ev mp_tmp matches 7 run function manianownia:straszak/osiagniecie
scoreboard players set @s mp_strach 0
