# Copy score in /tsk.hp/ to oak sign, set name of the entity, and immediately break the oak sign
execute if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:oak_sign
data merge block ~ ~ ~ {front_text:{messages:['[{"score":{"name":"@e[sort=nearest,limit=1,type=#tsk:all]","objective":"tsk.hp"}},{"text":" ❤","color":"red"}]','{"text":""}','{"text":""}','{"text":""}']}}
data modify entity @s CustomName set from block ~ ~ ~ front_text.messages[0]
data merge entity @s {CustomNameVisible:1b}
execute if block ~ ~ ~ oak_sign run setblock ~ ~ ~ air

# # Summon a button who's CustomName is set to the damage dealt by the player. 
execute if entity @p[tag=!tsk.hitCrit] run summon text_display ~1 ~1 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},billboard:"center",alignment:"center",Motion:[0.1,0.03,0.05],text:'[{"color":"red","text":"-"},{"color":"red","score":{"name":"@p","objective":"tsk.damageDealt"}}]',Tags:["tsk.dmgIndicator"]}
execute if entity @p[tag=tsk.hitCrit,scores={tsk.critHitCount=1}] run summon text_display ~1 ~1 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},billboard:"center",alignment:"center",Motion:[0.1,0.03,0.05],text:'[{"color":"gold","text":"✨"},{"color":"gold","score":{"name":"@p","objective":"tsk.damageDealt"}}]',Tags:["tsk.dmgIndicator"]}

# # Set a timer before this entity is untagged and will no longer display its health
scoreboard players set @s tsk.healthDisplayTimer 60
scoreboard players set @e[type=text_display,sort=nearest,limit=1,tag=tsk.dmgIndicator] tsk.indicatorTimer 20


## Remove players who hit this entity's crit score if hit me
