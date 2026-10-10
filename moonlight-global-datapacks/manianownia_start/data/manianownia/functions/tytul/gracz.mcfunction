scoreboard players set @s mp_lvl 0
scoreboard players set @s mp_tmp 0
execute if entity @s[tag=!mp_k_czarodziej] store result score @s mp_tmp run puffish_skills level get @s puffish_skills:czarodziej
execute if entity @s[tag=!mp_k_czarodziej] if score @s mp_tmp matches 1.. run tag @s add mp_k_czarodziej
scoreboard players set @s mp_tmp 0
execute if entity @s[tag=mp_k_czarodziej] store result score @s mp_tmp run puffish_skills level get @s puffish_skills:czarodziej
execute if entity @s[tag=mp_k_czarodziej] if score @s mp_tmp > @s mp_lvl run scoreboard players operation @s mp_lvl = @s mp_tmp
scoreboard players set @s mp_tmp 0
execute if entity @s[tag=!mp_k_paladyn] store result score @s mp_tmp run puffish_skills level get @s puffish_skills:paladyn
execute if entity @s[tag=!mp_k_paladyn] if score @s mp_tmp matches 1.. run tag @s add mp_k_paladyn
scoreboard players set @s mp_tmp 0
execute if entity @s[tag=mp_k_paladyn] store result score @s mp_tmp run puffish_skills level get @s puffish_skills:paladyn
execute if entity @s[tag=mp_k_paladyn] if score @s mp_tmp > @s mp_lvl run scoreboard players operation @s mp_lvl = @s mp_tmp
scoreboard players set @s mp_tmp 0
execute if entity @s[tag=!mp_k_kaplan] store result score @s mp_tmp run puffish_skills level get @s puffish_skills:kaplan
execute if entity @s[tag=!mp_k_kaplan] if score @s mp_tmp matches 1.. run tag @s add mp_k_kaplan
scoreboard players set @s mp_tmp 0
execute if entity @s[tag=mp_k_kaplan] store result score @s mp_tmp run puffish_skills level get @s puffish_skills:kaplan
execute if entity @s[tag=mp_k_kaplan] if score @s mp_tmp > @s mp_lvl run scoreboard players operation @s mp_lvl = @s mp_tmp
scoreboard players set @s mp_tmp 0
execute if entity @s[tag=!mp_k_lotrzyk] store result score @s mp_tmp run puffish_skills level get @s puffish_skills:lotrzyk
execute if entity @s[tag=!mp_k_lotrzyk] if score @s mp_tmp matches 1.. run tag @s add mp_k_lotrzyk
scoreboard players set @s mp_tmp 0
execute if entity @s[tag=mp_k_lotrzyk] store result score @s mp_tmp run puffish_skills level get @s puffish_skills:lotrzyk
execute if entity @s[tag=mp_k_lotrzyk] if score @s mp_tmp > @s mp_lvl run scoreboard players operation @s mp_lvl = @s mp_tmp
scoreboard players set @s mp_tmp 0
execute if entity @s[tag=!mp_k_wojownik] store result score @s mp_tmp run puffish_skills level get @s puffish_skills:wojownik
execute if entity @s[tag=!mp_k_wojownik] if score @s mp_tmp matches 1.. run tag @s add mp_k_wojownik
scoreboard players set @s mp_tmp 0
execute if entity @s[tag=mp_k_wojownik] store result score @s mp_tmp run puffish_skills level get @s puffish_skills:wojownik
execute if entity @s[tag=mp_k_wojownik] if score @s mp_tmp > @s mp_lvl run scoreboard players operation @s mp_lvl = @s mp_tmp
scoreboard players set @s mp_tmp 0
execute if entity @s[tag=!mp_k_lucznik] store result score @s mp_tmp run puffish_skills level get @s puffish_skills:lucznik
execute if entity @s[tag=!mp_k_lucznik] if score @s mp_tmp matches 1.. run tag @s add mp_k_lucznik
scoreboard players set @s mp_tmp 0
execute if entity @s[tag=mp_k_lucznik] store result score @s mp_tmp run puffish_skills level get @s puffish_skills:lucznik
execute if entity @s[tag=mp_k_lucznik] if score @s mp_tmp > @s mp_lvl run scoreboard players operation @s mp_lvl = @s mp_tmp
