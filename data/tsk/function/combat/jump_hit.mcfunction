damage @s 1 generic
$scoreboard players remove @s tsk.hp $(value)
particle entity_effect{color:[0.690,0.690,0.690,1.00]} ~ ~1 ~ 0.2 0.9 0.2 1 10 normal
effect give @s slowness 3 127 true