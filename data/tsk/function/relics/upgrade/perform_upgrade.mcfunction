
execute store result score $tsk.temp1 tsk.relic.xpTotal run data get entity @e[sort=nearest,distance=..2,limit=1,type=chest_boat] Items.[12].components."minecraft:custom_data".tsk.upgradeXp
execute store result score $tsk.temp2 tsk.relic.xpTotal run data get entity @e[sort=nearest,distance=..2,limit=1,type=chest_boat] Items.[13].components."minecraft:custom_data".tsk.upgradeXp
execute store result score $tsk.temp3 tsk.relic.xpTotal run data get entity @e[sort=nearest,distance=..2,limit=1,type=chest_boat] Items.[14].components."minecraft:custom_data".tsk.upgradeXp
execute store result score $tsk.temp4 tsk.relic.xpTotal run data get entity @e[sort=nearest,distance=..2,limit=1,type=chest_boat] Items.[15].components."minecraft:custom_data".tsk.upgradeXp
execute store result score $tsk.temp5 tsk.relic.xpTotal run data get entity @e[sort=nearest,distance=..2,limit=1,type=chest_boat] Items.[16].components."minecraft:custom_data".tsk.upgradeXp

execute store result score $tsk.temp1 tsk.relic.upgradeTotal run data get entity @e[sort=nearest,distance=..2,limit=1,type=chest_boat] Items.[12].components."minecraft:custom_data".tsk.upgradeCost
execute store result score $tsk.temp2 tsk.relic.upgradeTotal run data get entity @e[sort=nearest,distance=..2,limit=1,type=chest_boat] Items.[13].components."minecraft:custom_data".tsk.upgradeCost
execute store result score $tsk.temp3 tsk.relic.upgradeTotal run data get entity @e[sort=nearest,distance=..2,limit=1,type=chest_boat] Items.[14].components."minecraft:custom_data".tsk.upgradeCost
execute store result score $tsk.temp4 tsk.relic.upgradeTotal run data get entity @e[sort=nearest,distance=..2,limit=1,type=chest_boat] Items.[15].components."minecraft:custom_data".tsk.upgradeCost
execute store result score $tsk.temp5 tsk.relic.upgradeTotal run data get entity @e[sort=nearest,distance=..2,limit=1,type=chest_boat] Items.[16].components."minecraft:custom_data".tsk.upgradeCost

execute store result score $tsk.total tsk.relic.xpTotal run scoreboard players operation $tsk.temp1 tsk.relic.xpTotal += $tsk.temp2 tsk.relic.xpTotal
execute store result score $tsk.total tsk.relic.xpTotal run scoreboard players operation $tsk.total tsk.relic.xpTotal += $tsk.temp3 tsk.relic.xpTotal
execute store result score $tsk.total tsk.relic.xpTotal run scoreboard players operation $tsk.total tsk.relic.xpTotal += $tsk.temp4 tsk.relic.xpTotal
execute store result score $tsk.total tsk.relic.xpTotal run scoreboard players operation $tsk.total tsk.relic.xpTotal += $tsk.temp5 tsk.relic.xpTotal

execute store result score $tsk.total tsk.relic.upgradeTotal run scoreboard players operation $tsk.temp1 tsk.relic.upgradeTotal += $tsk.temp2 tsk.relic.upgradeTotal
execute store result score $tsk.total tsk.relic.upgradeTotal run scoreboard players operation $tsk.total tsk.relic.upgradeTotal += $tsk.temp3 tsk.relic.upgradeTotal
execute store result score $tsk.total tsk.relic.upgradeTotal run scoreboard players operation $tsk.total tsk.relic.upgradeTotal += $tsk.temp4 tsk.relic.upgradeTotal
execute store result score $tsk.total tsk.relic.upgradeTotal run scoreboard players operation $tsk.total tsk.relic.upgradeTotal += $tsk.temp5 tsk.relic.upgradeTotal



execute store result storage tsk:storage relic.xpTotal.value int 1 run scoreboard players get $tsk.total tsk.relic.xpTotal
execute store result storage tsk:storage relic.upgradeTotal.value int 1 run scoreboard players get $tsk.total tsk.relic.upgradeTotal
execute store result score $tsk.level tsk.relic.level run data get entity @e[sort=nearest,limit=1,type=chest_boat,distance=..1] Items.[10].components."minecraft:custom_data".tsk.level


execute if score $tsk.level tsk.relic.level matches ..12 if score @s tsk.gold >= $tsk.total tsk.relic.upgradeTotal if entity @e[sort=nearest,distance=..2,limit=1,type=chest_boat,nbt={Items:[{id:"minecraft:popped_chorus_fruit",Slot:10b,components:{"minecraft:custom_data":{tsk:{item:"relic"}}}}]}] at @s run function tsk:relics/upgrade/apply_xp_to_relic with storage tsk:storage relic.xpTotal
execute if score $tsk.level tsk.relic.level matches ..12 if score @s tsk.gold >= $tsk.total tsk.relic.upgradeTotal if entity @e[sort=nearest,distance=..2,limit=1,type=chest_boat,nbt={Items:[{id:"minecraft:popped_chorus_fruit",Slot:10b,components:{"minecraft:custom_data":{tsk:{item:"relic"}}}}]}] at @s run function tsk:relics/upgrade/remove_gold_from_player with storage tsk:storage relic.upgradeTotal


execute if score $tsk.level tsk.relic.level matches ..12 if score @s tsk.gold >= $tsk.total tsk.relic.upgradeTotal if entity @e[sort=nearest,distance=..2,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:10b,components:{"minecraft:custom_data":{tsk:{item:"relic"}}}}]}] at @s run function tsk:relics/upgrade/not_relic
execute if score @s tsk.gold <= $tsk.total tsk.relic.upgradeTotal if entity @e[sort=nearest,distance=..2,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:10b,components:{"minecraft:custom_data":{tsk:{item:"relic"}}}}]}] at @s run function tsk:relics/upgrade/not_enough_gold
execute if score $tsk.level tsk.relic.level matches 13.. if entity @e[sort=nearest,distance=..2,limit=1,type=chest_boat,nbt={Items:[{id:"minecraft:popped_chorus_fruit",Slot:10b,components:{"minecraft:custom_data":{tsk:{item:"relic"}}}}]}] at @s run function tsk:relics/upgrade/cant_upgrade







data remove storage tsk:storage relic.xpTotal
data remove storage tsk:storage relic.upgradeTotal
scoreboard players reset $tsk.temp1 tsk.relic.xpTotal
scoreboard players reset $tsk.temp1 tsk.relic.upgradeTotal
scoreboard players reset $tsk.temp2 tsk.relic.xpTotal
scoreboard players reset $tsk.temp2 tsk.relic.upgradeTotal
scoreboard players reset $tsk.temp3 tsk.relic.xpTotal
scoreboard players reset $tsk.temp3 tsk.relic.upgradeTotal
scoreboard players reset $tsk.temp4 tsk.relic.xpTotal
scoreboard players reset $tsk.temp4 tsk.relic.upgradeTotal
scoreboard players reset $tsk.temp5 tsk.relic.xpTotal
scoreboard players reset $tsk.temp5 tsk.relic.upgradeTotal