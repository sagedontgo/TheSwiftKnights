tag @s remove tsk.full
effect clear @s saturation
scoreboard players reset @s tsk.digestionTimer
scoreboard players set @s tsk.hungerBar 0

tellraw @s {"translate": "tsk.text.stats.digested","color": "gray"}