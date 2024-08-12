execute as @s run function ajjgui:_openself {id:"tsk.modifyRelic"}

execute as @e[sort=nearest,limit=1,type=interaction,tag=tsk.relicEditInteraction] run data remove entity @s interaction

