attribute @s minecraft:generic.max_health modifier add 4d616e69-616e-4f77-8e69-610000000031 "Manianownia boss+" 0.25 multiply_base
execute if entity @s[type=!minecraft:ender_dragon] run attribute @s minecraft:generic.attack_damage modifier add 4d616e69-616e-4f77-8e69-610000000032 "Manianownia boss+" 0.2 multiply_base
attribute @s minecraft:generic.armor modifier add 4d616e69-616e-4f77-8e69-610000000033 "Manianownia boss+" 4 add
execute if entity @s[tag=!mp_hit] run data modify entity @s Health set value 99999f
tag @s add mp_boss6
