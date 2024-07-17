damage @s 1 generic
$scoreboard players remove @s tsk.hp $(value)
particle sweep_attack ~ ~1 ~ 0.3 0 0.3 0 3
effect give @s slowness 3 127 true