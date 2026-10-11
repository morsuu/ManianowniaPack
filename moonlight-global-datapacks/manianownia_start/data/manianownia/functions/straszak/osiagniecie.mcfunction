summon minecraft:marker ~ ~ ~ {Tags:["mp_rng"]}
execute store result score #r mp_tmp run data get entity @e[type=minecraft:marker,tag=mp_rng,limit=1] UUID[0]
kill @e[type=minecraft:marker,tag=mp_rng]
scoreboard players set #mod mp_tmp 6
scoreboard players operation #r mp_tmp %= #mod mp_tmp
execute if score #r mp_tmp matches ..-1 run scoreboard players operation #r mp_tmp += #mod mp_tmp
execute if score #r mp_tmp matches 0 run advancement grant @s only manianownia:straszaki/nie_sam
execute if score #r mp_tmp matches 1 run advancement grant @s only manianownia:straszaki/patrzy
execute if score #r mp_tmp matches 2 run advancement grant @s only manianownia:straszaki/pusty_dom
execute if score #r mp_tmp matches 3 run advancement grant @s only manianownia:straszaki/pochodnia
execute if score #r mp_tmp matches 4 run advancement grant @s only manianownia:straszaki/imie
execute if score #r mp_tmp matches 5 run advancement grant @s only manianownia:straszaki/null
playsound minecraft:entity.elder_guardian.curse ambient @s ~ ~ ~ 0.4 0.5
