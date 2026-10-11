attribute @s minecraft:generic.attack_damage modifier remove 4d616e69-616e-4f77-8e69-610000000001
attribute @s minecraft:generic.armor modifier remove 4d616e69-616e-4f77-8e69-610000000002
attribute @s minecraft:generic.knockback_resistance modifier remove 4d616e69-616e-4f77-8e69-610000000003
attribute @s minecraft:generic.knockback_resistance modifier add 4d616e69-616e-4f77-8e69-610000000003 "Manianownia" 0.3 add
execute if entity @s[type=bosses_of_mass_destruction:lich] run attribute @s minecraft:generic.max_health base set 300
execute if entity @s[type=bosses_of_mass_destruction:lich] run attribute @s minecraft:generic.attack_damage base set 9
execute if entity @s[type=bosses_of_mass_destruction:obsidilith] run attribute @s minecraft:generic.max_health base set 300
execute if entity @s[type=bosses_of_mass_destruction:obsidilith] run attribute @s minecraft:generic.attack_damage base set 16
execute if entity @s[type=bosses_of_mass_destruction:obsidilith] run attribute @s minecraft:generic.armor base set 14
execute if entity @s[type=bosses_of_mass_destruction:gauntlet] run attribute @s minecraft:generic.max_health base set 250
execute if entity @s[type=bosses_of_mass_destruction:gauntlet] run attribute @s minecraft:generic.attack_damage base set 20
execute if entity @s[type=bosses_of_mass_destruction:gauntlet] run attribute @s minecraft:generic.armor base set 8
execute if entity @s[type=bosses_of_mass_destruction:void_blossom] run attribute @s minecraft:generic.max_health base set 350
execute if entity @s[type=bosses_of_mass_destruction:void_blossom] run attribute @s minecraft:generic.attack_damage base set 12
execute if entity @s[type=bosses_of_mass_destruction:void_blossom] run attribute @s minecraft:generic.armor base set 4
execute if entity @s[type=minecraft:warden] run attribute @s minecraft:generic.attack_damage base set 16
scoreboard players set @s mp_np 1
tag @s add mp_boss
tag @s add mp_boss2
tag @s add mp_boss4
execute if entity @s[type=graveyard:lich] run tag @s add mp_hit
