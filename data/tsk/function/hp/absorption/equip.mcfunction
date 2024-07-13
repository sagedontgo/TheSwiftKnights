scoreboard players operation @s tsk.hpBackup = @s tsk.maxHp
execute store result score @s tsk.absorptionAmplifier run data get entity @s active_effects[{id:"minecraft:absorption"}].amplifier
execute store result score @s tsk.absorptionDuration run data get entity @s active_effects[{id:"minecraft:absorption"}].duration
scoreboard players operation @s tsk.absorptionAmplifier += $1 tsk.int
execute store result score @s tsk.absorptionAddHearts run scoreboard players operation @s tsk.absorptionAmplifier *= $4 tsk.int
tag @s add tsk.hasAbsorption

scoreboard players operation @s tsk.maxHp += @s tsk.absorptionAddHearts
execute if score @s tsk.hp matches 100.. run scoreboard players operation @s tsk.hp = @s tsk.maxHp