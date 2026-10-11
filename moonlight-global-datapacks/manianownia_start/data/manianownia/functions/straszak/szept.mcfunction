summon minecraft:marker ~ ~ ~ {Tags:["mp_rng"]}
execute store result score #r mp_tmp run data get entity @e[type=minecraft:marker,tag=mp_rng,limit=1] UUID[0]
kill @e[type=minecraft:marker,tag=mp_rng]
scoreboard players set #mod mp_tmp 16
scoreboard players operation #r mp_tmp %= #mod mp_tmp
execute if score #r mp_tmp matches ..-1 run scoreboard players operation #r mp_tmp += #mod mp_tmp
execute if score #r mp_tmp matches 0 run tellraw @s {"translate": "commands.message.display.incoming", "color": "gray", "italic": true, "with": ["null", {"text": "Widzę cię."}]}
execute if score #r mp_tmp matches 1 run tellraw @s {"translate": "commands.message.display.incoming", "color": "gray", "italic": true, "with": ["null", {"text": "Nie odwracaj się."}]}
execute if score #r mp_tmp matches 2 run tellraw @s {"translate": "commands.message.display.incoming", "color": "gray", "italic": true, "with": ["null", {"text": "Dlaczego tu jesteś?"}]}
execute if score #r mp_tmp matches 3 run tellraw @s {"translate": "commands.message.display.incoming", "color": "gray", "italic": true, "with": ["null", {"text": "Ten świat nie jest twój."}]}
execute if score #r mp_tmp matches 4 run tellraw @s {"translate": "commands.message.display.incoming", "color": "gray", "italic": true, "with": ["null", {"text": "Ktoś stoi za tobą."}]}
execute if score #r mp_tmp matches 5 run tellraw @s {"translate": "commands.message.display.incoming", "color": "gray", "italic": true, "with": ["null", {"text": "Zostań ze mną."}]}
execute if score #r mp_tmp matches 6 run tellraw @s {"translate": "commands.message.display.incoming", "color": "gray", "italic": true, "with": ["null", {"text": "Słyszysz to?"}]}
execute if score #r mp_tmp matches 7 run tellraw @s {"translate": "commands.message.display.incoming", "color": "gray", "italic": true, "with": ["null", {"text": "Już niedługo."}]}
execute if score #r mp_tmp matches 8 run tellraw @s {"translate": "commands.message.display.incoming", "color": "gray", "italic": true, "with": ["null", {"text": "Byłem tu przed tobą."}]}
execute if score #r mp_tmp matches 9 run tellraw @s {"translate": "commands.message.display.incoming", "color": "gray", "italic": true, "with": ["null", {"text": "Zgaś światło."}]}
execute if score #r mp_tmp matches 10 run tellraw @s {"translate": "commands.message.display.incoming", "color": "gray", "italic": true, "with": ["null", {"text": "Jesteś sam?"}]}
execute if score #r mp_tmp matches 11 run tellraw @s {"translate": "commands.message.display.incoming", "color": "gray", "italic": true, "with": ["null", {"text": "Liczę twoje kroki."}]}
execute if score #r mp_tmp matches 12 run tellraw @s {"translate": "commands.message.display.incoming", "color": "gray", "italic": true, "with": ["null", {"text": "Przyjaciele cię nie uratują."}]}
execute if score #r mp_tmp matches 13 run tellraw @s {"translate": "commands.message.display.incoming", "color": "gray", "italic": true, "with": ["null", {"text": "Nie kop tak głęboko."}]}
execute if score #r mp_tmp matches 14 run tellraw @s {"translate": "commands.message.display.incoming", "color": "gray", "italic": true, "with": ["null", {"text": "Obudź się."}]}
execute if score #r mp_tmp matches 15 run tellraw @s {"translate": "commands.message.display.incoming", "color": "gray", "italic": true, "with": ["null", ["", {"selector": "@s"}, {"text": "... "}, {"selector": "@s"}, {"text": "..."}]]}
execute at @s rotated as @s positioned ^ ^ ^-2 run playsound minecraft:entity.player.breath ambient @s ~ ~ ~ 0.6 0.6
