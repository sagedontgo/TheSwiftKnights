tag @s add tsk.isBleeding
scoreboard players set @s tsk.bleedingTimer 60
effect give @s slowness 3 127 true
attribute @s generic.jump_strength base set 0.0

damage @s 5 fall
scoreboard players remove @s tsk.hp 10
tag @s remove tsk.stunFallDamage

tellraw @s {"translate": "tsk.text.stun_fall_damage","color": "gray","italic": true}