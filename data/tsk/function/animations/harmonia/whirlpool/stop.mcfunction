gamemode survival @s
tag @s remove tsk.animationIsPlaying.harmoniaUlt1
scoreboard players reset @s tsk.animationPlayingTimer
kill @e[type=text_display,tag=tsk.animationTextDisplay]
kill @e[limit=1,type=armor_stand,tag=tsk.harmoniaModel]
kill @e[limit=1,type=marker,tag=tsk.camera]
tp @s @e[limit=1,type=marker,tag=tsk.playerMarker]
kill @e[limit=1,type=marker,tag=tsk.playerMarker]
kill @e[type=marker,tag=tsk.particleMarker.bubble]

