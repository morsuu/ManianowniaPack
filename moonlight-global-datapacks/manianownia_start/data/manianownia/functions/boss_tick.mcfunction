execute as @e[type=#manianownia:bosses,tag=!mp_boss] run function manianownia:boss_buff
execute as @e[type=#manianownia:bosses,tag=!mp_dead] store result score @s mp_hp run data get entity @s Health 100
execute as @e[type=#manianownia:bosses,tag=!mp_dead,scores={mp_hp=..0}] at @s run function manianownia:boss_died
execute as @e[type=minecraft:ender_dragon,tag=!mp_dead,nbt={DragonPhase:9}] at @s run function manianownia:boss_died
schedule function manianownia:boss_tick 10t replace
