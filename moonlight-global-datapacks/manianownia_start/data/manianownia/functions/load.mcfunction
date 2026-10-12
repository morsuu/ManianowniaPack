scoreboard objectives add mp_hp dummy
scoreboard objectives add mp_np dummy
scoreboard objectives add mp_lv dummy
scoreboard objectives add mp_tmp dummy
scoreboard objectives add mp_cfg dummy
execute unless score #wlasna_trudnosc mp_cfg matches 1 run difficulty normal
schedule function manianownia:boss_tick 10t replace
