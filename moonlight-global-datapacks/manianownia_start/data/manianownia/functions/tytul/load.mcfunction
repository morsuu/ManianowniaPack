scoreboard objectives add mp_lvl dummy
scoreboard objectives add mp_tmp dummy
scoreboard objectives modify mp_lvl displayname {"text": "poz. klasy", "color": "gold"}
scoreboard objectives setdisplay list mp_lvl
scoreboard objectives setdisplay belowName mp_lvl
schedule function manianownia:tytul/tick 100t replace
