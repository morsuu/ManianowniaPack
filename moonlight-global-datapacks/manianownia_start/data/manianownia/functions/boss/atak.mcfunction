attribute @s minecraft:generic.attack_damage modifier remove 4d616e69-616e-4f77-8e69-610000000012
attribute @s minecraft:generic.attack_damage modifier add 4d616e69-616e-4f77-8e69-610000000012 "Manianownia boss" 0.8 multiply_base
execute if entity @s[type=bosses_of_mass_destruction:gauntlet] run attribute @s minecraft:generic.attack_damage base set 14
tag @s add mp_boss5
