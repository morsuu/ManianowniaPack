scoreboard players add @s mp_strach 1
execute if score @s mp_strach matches 20.. if predicate manianownia:straszak_ciemno if predicate manianownia:szansa_4 run function manianownia:straszak/losuj
execute if score @s mp_strach matches 20.. unless predicate manianownia:straszak_ciemno if predicate manianownia:szansa_1_5 run function manianownia:straszak/losuj
