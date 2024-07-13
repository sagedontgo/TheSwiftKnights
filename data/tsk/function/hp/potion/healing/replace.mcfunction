summon potion ~ ~ ~ {Tags:["tsk.newHealingPotion","tsk.healingPotionWithMarker"],Passengers:[{id:"minecraft:marker",Tags:["tsk.newHealingPotion.marker"]}],Item:{id:"minecraft:splash_potion",count:1}}
data modify entity @e[sort=nearest,limit=1,type=potion,tag=tsk.healingPotionWithMarker] Item set from entity @s Item
data modify entity @e[sort=nearest,limit=1,type=potion,tag=tsk.healingPotionWithMarker] Motion set from entity @s Motion
data modify entity @e[sort=nearest,limit=1,type=potion,tag=tsk.healingPotionWithMarker] Owner set from entity @s Owner
tag @e[type=potion,tag=tsk.newHealingPotion,limit=1] remove tsk.newHealingPotion
kill @s
