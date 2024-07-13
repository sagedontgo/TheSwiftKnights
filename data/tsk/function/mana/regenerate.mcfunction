scoreboard players operation @s tsk.manaRegenTimer = @s tsk.manaRegenTimer.stat
execute as @s if score @s tsk.mana < @s tsk.manaMax run scoreboard players operation @s tsk.mana += @s tsk.manaRegenRate