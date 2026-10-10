advancement revoke @s only manianownia:boss_kill/boss_gauntlet
advancement grant @a[distance=..96] only manianownia:boss/boss_gauntlet assist
tellraw @a[distance=..96] [{"text": "Boss pokonany! ", "color": "gold", "bold": true}, {"text": "Quest zaliczony dla wszystkich w pobliżu. Odbierz trofeum w księdze questów.", "color": "gray"}]
