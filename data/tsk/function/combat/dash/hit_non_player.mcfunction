say oww
particle minecraft:sweep_attack ~ ~1 ~ 0.2 0.1 0.2 0 10
damage @s 1 tsk:combat/dash by @p[tag=tsk.dashReady] from @p[tag=tsk.dashReady]
$scoreboard players remove @s tsk.hp $(value)
