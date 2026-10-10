advancement revoke @s only manianownia:boss_kill/b_elder
advancement grant @a[distance=..96] only manianownia:boss/b_elder assist
tellraw @a[distance=..96] [{"text": "Boss pokonany! ", "color": "gold", "bold": true}, {"text": "Quest zaliczony dla wszystkich w pobliżu. Odbierz trofeum w księdze questów.", "color": "gray"}]
