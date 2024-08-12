execute store result score @s tsk.randomVal run random value 1..9
item modify entity @s weapon.mainhand tsk:remove_one
execute if entity @s[tag=tsk.knight1,scores={tsk.randomVal=1}] run function tsk:items/grimoires/knight1/riffs/high_tide
execute if entity @s[tag=tsk.knight1,scores={tsk.randomVal=2}] run function tsk:items/grimoires/knight1/riffs/rainy_ending
execute if entity @s[tag=tsk.knight1,scores={tsk.randomVal=3}] run function tsk:items/grimoires/knight1/riffs/tidal_wave
execute if entity @s[tag=tsk.knight1,scores={tsk.randomVal=4}] run function tsk:items/grimoires/knight1/shields/cascade
execute if entity @s[tag=tsk.knight1,scores={tsk.randomVal=5}] run function tsk:items/grimoires/knight1/shields/sanctuary
execute if entity @s[tag=tsk.knight1,scores={tsk.randomVal=6}] run function tsk:items/grimoires/knight1/shields/magical_melody
execute if entity @s[tag=tsk.knight1,scores={tsk.randomVal=7}] run function tsk:items/grimoires/knight1/anthems/tsunami
execute if entity @s[tag=tsk.knight1,scores={tsk.randomVal=8}] run function tsk:items/grimoires/knight1/tricks/liquid_veil
scoreboard players reset @s tsk.randomVal