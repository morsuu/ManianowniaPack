advancement revoke @s only manianownia:boss_kill/b_dragon
advancement grant @a[distance=..96] only manianownia:boss/b_dragon assist
tellraw @a[distance=..96] [{"text": "Boss pokonany! ", "color": "gold", "bold": true}, {"text": "Quest zaliczony dla wszystkich w pobliżu. Odbierz trofeum w księdze questów.", "color": "gray"}]
