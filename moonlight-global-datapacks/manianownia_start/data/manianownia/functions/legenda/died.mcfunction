advancement revoke @s only manianownia:legenda_kill
bossbar set manianownia:legenda visible false
advancement grant @a[distance=..96] only manianownia:legenda assist
tellraw @a [{"text": "⚔ Legenda pokonana! ", "color": "gold", "bold": true}, {"text": "Ostatni cios: ", "color": "gray"}, {"selector": "@s"}, {"text": ". Sprawdźcie łup, może trafił się legendarny przedmiot.", "color": "gray"}]
playsound minecraft:ui.toast.challenge_complete master @a[distance=..96] ~ ~ ~ 1 1
