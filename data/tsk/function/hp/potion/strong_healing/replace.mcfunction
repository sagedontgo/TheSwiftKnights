summon potion ~ ~ ~ {Tags:["tsk.newStrongHealingPotion","tsk.strongHealingPotionWithMarker"],Passengers:[{id:"minecraft:marker",Tags:["tsk.newStrongHealingPotion.marker"]}],Item:{id:"minecraft:splash_potion",count:1}}
data modify entity @e[sort=nearest,limit=1,type=potion,tag=tsk.strongHealingPotionWithMarker] Item set from entity @s Item
data modify entity @e[sort=nearest,limit=1,type=potion,tag=tsk.strongHealingPotionWithMarker] Motion set from entity @s Motion
data modify entity @e[sort=nearest,limit=1,type=potion,tag=tsk.strongHealingPotionWithMarker] Owner set from entity @s Owner
tag @e[type=potion,tag=tsk.newStrongHealingPotion,limit=1] remove tsk.newStrongHealingPotion
kill @s
