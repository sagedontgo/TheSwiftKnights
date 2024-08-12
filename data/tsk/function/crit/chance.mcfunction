execute store result score $random tsk.randomVal run random value 0..100
execute if score $random tsk.randomVal <= @s tsk.critRate run function tsk:crit/crit