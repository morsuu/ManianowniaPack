execute unless entity @s[type=graveyard:lich] run attribute @s minecraft:generic.max_health modifier add 4d616e69-616e-4f77-8e69-610000000011 "Manianownia boss" 0.5 multiply_base
attribute @s minecraft:generic.attack_damage modifier add 4d616e69-616e-4f77-8e69-610000000012 "Manianownia boss" 0.8 multiply_base
attribute @s minecraft:generic.armor modifier add 4d616e69-616e-4f77-8e69-610000000013 "Manianownia boss" 0.15 multiply_base
execute if entity @s[tag=!mp_hit] run data modify entity @s Health set value 99999f
tag @s add mp_boss3
tag @s add mp_boss5
