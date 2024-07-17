execute store result score $random tsk.randomVal run random value 0..100
execute if score $random tsk.randomVal <= @s tsk.critRate run function tsk:crit/crit
execute unless score $random tsk.randomVal <= @s tsk.critRate run advancement revoke @s only tsk:crit/entity_hit
advancement revoke @s only tsk:crit/calculate