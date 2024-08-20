execute unless score @s tsk.abilityTimer.highTide matches 1.. run scoreboard players set @s tsk.abilityTimer.highTide 80
tp @s @e[sort=nearest,limit=1,type=marker,tag=tsk.tpAnchor.highTide]
effect give @s slowness 5 2
damage @s 1 tsk:knight1/tidal_wave by @p[tag=tsk.castedAbility.highTide] from @p[tag=tsk.castedAbility.highTide]
