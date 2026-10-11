execute store result score #h mp_tmp run data get entity @s Health
execute store result score #m mp_tmp run attribute @s minecraft:generic.max_health get
execute store result score #inv mp_tmp run data get entity @s Invul
execute if score #inv mp_tmp matches 0 if score #h mp_tmp < #m mp_tmp run tag @s add mp_hit
execute store result score #n mp_tmp if entity @a[distance=..96,gamemode=!spectator]
execute if score #n mp_tmp matches 6.. run scoreboard players set #n mp_tmp 5
execute if entity @s[tag=!mp_hit] if score #n mp_tmp matches 1.. unless score @s mp_np = #n mp_tmp run function manianownia:boss/apply
