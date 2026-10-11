summon minecraft:marker ~ ~ ~ {Tags:["mp_rng"]}
execute store result score #r mp_tmp run data get entity @e[type=minecraft:marker,tag=mp_rng,limit=1] UUID[0]
kill @e[type=minecraft:marker,tag=mp_rng]
scoreboard players set #mod mp_tmp 7
scoreboard players operation #r mp_tmp %= #mod mp_tmp
execute if score #r mp_tmp matches ..-1 run scoreboard players operation #r mp_tmp += #mod mp_tmp
execute if score #r mp_tmp matches 0 run execute at @s rotated as @s positioned ^ ^ ^-12 run playsound minecraft:entity.ghast.scream ambient @s ~ ~ ~ 1.0 0.5
execute if score #r mp_tmp matches 1 run execute at @s rotated as @s positioned ^ ^ ^-12 run playsound minecraft:entity.elder_guardian.curse ambient @s ~ ~ ~ 1.0 0.5
execute if score #r mp_tmp matches 2 run execute at @s rotated as @s positioned ^ ^ ^-12 run playsound minecraft:block.sculk_shrieker.shriek ambient @s ~ ~ ~ 1.0 0.6
execute if score #r mp_tmp matches 3 run execute at @s rotated as @s positioned ^ ^ ^-12 run playsound minecraft:block.bell.use ambient @s ~ ~ ~ 1.0 0.5
execute if score #r mp_tmp matches 4 run execute at @s rotated as @s positioned ^ ^ ^-12 run playsound minecraft:block.glass.break ambient @s ~ ~ ~ 1.0 0.8
execute if score #r mp_tmp matches 5 run execute at @s rotated as @s positioned ^ ^ ^-12 run playsound minecraft:block.chest.open ambient @s ~ ~ ~ 1.0 0.6
execute if score #r mp_tmp matches 6 run execute at @s rotated as @s positioned ^ ^ ^-12 run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 1.0 1.0
