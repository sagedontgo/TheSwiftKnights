item modify entity @s weapon.mainhand tsk:remove_one
$summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:popped_chorus_fruit",components:{custom_name:'{"text":"Charm","italic":false,"color":"dark_green"}',"minecraft:lore":['{"text":" ","color":"dark_gray"}','{"text":"Main Statistics","italic":false,"color":"gold"}','{"text":"+$(value)","italic":false,"color":"white","extra":[{"text":" DEF","color":"green"}]}','{"text":"Sub-Stats","italic":false,"color":"red"}','{"text":"<empty>","italic":false,"color":"gray"}','{"text":"<empty>","italic":false,"color":"gray"}','{"text":"<level4>","italic":false,"color":"gray"}','{"text":"<level8>","italic":false,"color":"gray"}'],enchantments:{lure:0},custom_data:{tsk:{artifactType:"charm",item:"relic",artifactMainStat:"defFlat",relicXp:0,currentXp:0,neededXp:120,level:0,artifactBuffs:{main:$(value)}}}}},Tags:["tsk.temp"]}
$execute as @e[sort=nearest,limit=1,type=item,tag=tsk.temp] run data merge entity @s {Item:{id:"minecraft:popped_chorus_fruit",components:{custom_data:{tsk:{artifactBuffs:{main:$(value)}}}}}} 
item modify entity @s weapon.mainhand tsk:relics/charms/flat/mainstat_def