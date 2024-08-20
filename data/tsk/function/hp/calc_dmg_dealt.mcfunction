execute as @a as @s run function tsk:strength/calc_new_dmg
execute as @s store result score @s tsk.damageDealt run scoreboard players operation @s tsk.preCalDamageDealt /= $10 tsk.int
scoreboard players operation $tsk.tempDamageDealt tsk.damageDealt = @s tsk.damageDealt
scoreboard players operation $tsk.combatMastery tsk.damageDealt = @s tsk.combatMastery
scoreboard players operation $tsk.tempDamageDealt tsk.damageDealt /= $2 tsk.int

execute store result storage tsk:storage charge.value int 1 run scoreboard players get $tsk.tempDamageDealt tsk.damageDealt

execute unless entity @s[tag=tsk.dashReady] run function tsk:combat/dash/charge with storage tsk:storage charge

data remove storage tsk:storage charge
scoreboard players reset $tsk.tempDamageDealt tsk.damageDealt
scoreboard players reset $tsk.tempcombatMastery tsk.damageDealt
scoreboard players reset @s tsk.preCalDamageDealt