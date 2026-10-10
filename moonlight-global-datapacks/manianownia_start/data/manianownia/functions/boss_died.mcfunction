tag @s add mp_dead
execute if entity @s[type=bosses_of_mass_destruction:lich] run advancement grant @a[distance=..96] only manianownia:boss/boss_lich assist
execute if entity @s[type=minecraft:elder_guardian] run advancement grant @a[distance=..96] only manianownia:boss/b_elder assist
execute if entity @s[type=bosses_of_mass_destruction:gauntlet] run advancement grant @a[distance=..96] only manianownia:boss/boss_gauntlet assist
execute if entity @s[type=minecraft:wither] run advancement grant @a[distance=..96] only manianownia:boss/b_wither assist
execute if entity @s[type=graveyard:lich] run advancement grant @a[distance=..96] only manianownia:boss/boss_champion assist
execute if entity @s[type=bosses_of_mass_destruction:void_blossom] run advancement grant @a[distance=..96] only manianownia:boss/boss_blossom assist
execute if entity @s[type=adventurez:blackstone_golem] run advancement grant @a[distance=..96] only manianownia:boss/az_golem assist
execute if entity @s[type=minecraft:ender_dragon] run advancement grant @a[distance=..96] only manianownia:boss/b_dragon assist
execute if entity @s[type=bosses_of_mass_destruction:obsidilith] run advancement grant @a[distance=..96] only manianownia:boss/boss_obsidilith assist
execute if entity @s[type=minecraft:warden] run advancement grant @a[distance=..96] only manianownia:boss/b_warden assist
execute if entity @s[type=adventurez:the_eye] run advancement grant @a[distance=..96] only manianownia:boss/az_eye assist
execute if entity @s[type=adventurez:void_shadow] run advancement grant @a[distance=..96] only manianownia:boss/az_void assist
tellraw @a[distance=..96] [{"text": "Boss pokonany! ", "color": "gold", "bold": true}, {"text": "Quest zaliczony dla wszystkich w pobliżu. Odbierz trofeum w księdze questów.", "color": "gray"}]
