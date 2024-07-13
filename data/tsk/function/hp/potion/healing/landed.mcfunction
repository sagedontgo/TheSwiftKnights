execute as @e[distance=..3.5] run scoreboard players add @s tsk.hp 10
kill @e[sort=nearest,limit=1,type=potion,tag=tsk.healingPotionWithMarker]
kill @s