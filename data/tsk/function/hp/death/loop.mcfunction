scoreboard players remove @s tsk.resRoll.animationTimer 1
tp @s @e[sort=nearest,limit=1,type=marker,tag=tsk.resMarker]

execute if score @s tsk.resRoll.animationTimer matches 59 run tellraw @s [{"text":"Devils roll the dice...","color": "gray"}]
execute if score @s tsk.resRoll.animationTimer matches 49 run tellraw @s [{"text":"Angels roll their eyes...","color": "gray"}]
execute if score @s tsk.resRoll.animationTimer matches 40 run tellraw @s [{"text":"You rolled a ","color": "gray"},{"score": {"name": "$random","objective": "tsk.randomVal"}}]
execute if score @s tsk.resRoll.animationTimer matches 20 if score $random tsk.randomVal <= @s tsk.constitution run tellraw @s [{"text":"You will be resurrected!","color": "gray"}]
execute if score @s tsk.resRoll.animationTimer matches 20 if score $random tsk.randomVal >= @s tsk.constitution run tellraw @s [{"text":"You couldn't be resurrected. R.I.P.","color": "gray"}]
execute if score @s tsk.resRoll.animationTimer matches 2 run kill @e[sort=nearest,limit=1,type=marker,tag=tsk.resMarker]


execute if score @s tsk.resRoll.animationTimer matches 1 if score $random tsk.randomVal <= @s tsk.constitution run function tsk:hp/death/ressurect
execute if score @s tsk.resRoll.animationTimer matches 1 if score $random tsk.randomVal >= @s tsk.constitution run function tsk:hp/death/death