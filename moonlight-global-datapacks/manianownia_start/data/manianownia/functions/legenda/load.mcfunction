scoreboard objectives add mp_tmp dummy
scoreboard objectives add mp_lt dummy
scoreboard objectives add mp_lab dummy
scoreboard players set #n6 mp_tmp 6
bossbar add manianownia:legenda "Legenda"
bossbar set manianownia:legenda color red
bossbar set manianownia:legenda style notched_10
bossbar set manianownia:legenda visible false
schedule function manianownia:legenda/tick 10t replace
schedule function manianownia:legenda/roll 2400t replace
