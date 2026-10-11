attribute @s minecraft:generic.max_health modifier remove 4d616e69-616e-4f77-8e69-610000000010
execute if score #n mp_tmp matches 2 run attribute @s minecraft:generic.max_health modifier add 4d616e69-616e-4f77-8e69-610000000010 "Manianownia gracze" 0.4 multiply_base
execute if score #n mp_tmp matches 3 run attribute @s minecraft:generic.max_health modifier add 4d616e69-616e-4f77-8e69-610000000010 "Manianownia gracze" 0.8 multiply_base
execute if score #n mp_tmp matches 4 run attribute @s minecraft:generic.max_health modifier add 4d616e69-616e-4f77-8e69-610000000010 "Manianownia gracze" 1.2 multiply_base
execute if score #n mp_tmp matches 5 run attribute @s minecraft:generic.max_health modifier add 4d616e69-616e-4f77-8e69-610000000010 "Manianownia gracze" 1.6 multiply_base
scoreboard players operation @s mp_np = #n mp_tmp
execute if score #inv mp_tmp matches 0 run data modify entity @s Health set value 99999f
