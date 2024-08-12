
execute as @s at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt={Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/give_stats/talisman


execute as @s[tag=tsk.relicBuffApplied.talisman,tag=tsk.relicBuff.flat.talisman.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/remove_stats/talisman/flat/def
execute as @s[tag=tsk.relicBuffApplied.talisman,tag=tsk.relicBuff.flat.talisman.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/remove_stats/talisman/flat/maxhp
execute as @s[tag=tsk.relicBuffApplied.talisman,tag=tsk.relicBuff.flat.talisman.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/remove_stats/talisman/flat/str

execute as @s[tag=tsk.relicBuffApplied.talisman,tag=tsk.relicBuff.percentage.talisman.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/remove_stats/talisman/percentage/def
execute as @s[tag=tsk.relicBuffApplied.talisman,tag=tsk.relicBuff.percentage.talisman.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/remove_stats/talisman/percentage/maxhp
execute as @s[tag=tsk.relicBuffApplied.talisman,tag=tsk.relicBuff.percentage.talisman.critRate] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/remove_stats/talisman/percentage/critrate
execute as @s[tag=tsk.relicBuffApplied.talisman,tag=tsk.relicBuff.percentage.talisman.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/remove_stats/talisman/percentage/str

execute as @s[tag=tsk.relicBuffApplied.substat1.talisman,tag=tsk.relicBuff.substat1.flat.talisman.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/talisman/flat/mana_regen
execute as @s[tag=tsk.relicBuffApplied.substat1.talisman,tag=tsk.relicBuff.substat1.flat.talisman.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/talisman/flat/max_mana
execute as @s[tag=tsk.relicBuffApplied.substat1.talisman,tag=tsk.relicBuff.substat1.flat.talisman.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/talisman/flat/def
execute as @s[tag=tsk.relicBuffApplied.substat1.talisman,tag=tsk.relicBuff.substat1.flat.talisman.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/talisman/flat/maxhp
execute as @s[tag=tsk.relicBuffApplied.substat1.talisman,tag=tsk.relicBuff.substat1.flat.talisman.sc] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/talisman/flat/sc
execute as @s[tag=tsk.relicBuffApplied.substat1.talisman,tag=tsk.relicBuff.substat1.flat.talisman.critDmg] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/talisman/flat/critdmg
execute as @s[tag=tsk.relicBuffApplied.substat1.talisman,tag=tsk.relicBuff.substat1.flat.talisman.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/talisman/flat/str
execute as @s[tag=tsk.relicBuffApplied.substat1.talisman,tag=tsk.relicBuff.substat1.percentage.talisman.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/talisman/percentage/max_mana
execute as @s[tag=tsk.relicBuffApplied.substat1.talisman,tag=tsk.relicBuff.substat1.percentage.talisman.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/talisman/percentage/mana_regen
execute as @s[tag=tsk.relicBuffApplied.substat1.talisman,tag=tsk.relicBuff.substat1.percentage.talisman.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/talisman/percentage/maxhp
execute as @s[tag=tsk.relicBuffApplied.substat1.talisman,tag=tsk.relicBuff.substat1.percentage.talisman.critRate] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/talisman/percentage/critrate
execute as @s[tag=tsk.relicBuffApplied.substat1.talisman,tag=tsk.relicBuff.substat1.percentage.talisman.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/talisman/percentage/str
execute as @s[tag=tsk.relicBuffApplied.substat1.talisman,tag=tsk.relicBuff.substat1.percentage.talisman.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/talisman/percentage/def

execute as @s[tag=tsk.relicBuffApplied.substat2.talisman,tag=tsk.relicBuff.substat2.flat.talisman.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/talisman/flat/mana_regen
execute as @s[tag=tsk.relicBuffApplied.substat2.talisman,tag=tsk.relicBuff.substat2.flat.talisman.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/talisman/flat/max_mana
execute as @s[tag=tsk.relicBuffApplied.substat2.talisman,tag=tsk.relicBuff.substat2.flat.talisman.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/talisman/flat/def
execute as @s[tag=tsk.relicBuffApplied.substat2.talisman,tag=tsk.relicBuff.substat2.flat.talisman.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/talisman/flat/maxhp
execute as @s[tag=tsk.relicBuffApplied.substat2.talisman,tag=tsk.relicBuff.substat2.flat.talisman.sc] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/talisman/flat/sc
execute as @s[tag=tsk.relicBuffApplied.substat2.talisman,tag=tsk.relicBuff.substat2.flat.talisman.critDmg] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/talisman/flat/critdmg
execute as @s[tag=tsk.relicBuffApplied.substat2.talisman,tag=tsk.relicBuff.substat2.flat.talisman.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/talisman/flat/str
execute as @s[tag=tsk.relicBuffApplied.substat2.talisman,tag=tsk.relicBuff.substat2.percentage.talisman.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/talisman/percentage/max_mana
execute as @s[tag=tsk.relicBuffApplied.substat2.talisman,tag=tsk.relicBuff.substat2.percentage.talisman.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/talisman/percentage/mana_regen
execute as @s[tag=tsk.relicBuffApplied.substat2.talisman,tag=tsk.relicBuff.substat2.percentage.talisman.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/talisman/percentage/maxhp
execute as @s[tag=tsk.relicBuffApplied.substat2.talisman,tag=tsk.relicBuff.substat2.percentage.talisman.critRate] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/talisman/percentage/critrate
execute as @s[tag=tsk.relicBuffApplied.substat2.talisman,tag=tsk.relicBuff.substat2.percentage.talisman.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/talisman/percentage/str
execute as @s[tag=tsk.relicBuffApplied.substat2.talisman,tag=tsk.relicBuff.substat2.percentage.talisman.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/talisman/percentage/def

execute as @s[tag=tsk.relicBuffApplied.substat3.talisman,tag=tsk.relicBuff.substat3.flat.talisman.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/talisman/flat/mana_regen
execute as @s[tag=tsk.relicBuffApplied.substat3.talisman,tag=tsk.relicBuff.substat3.flat.talisman.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/talisman/flat/max_mana
execute as @s[tag=tsk.relicBuffApplied.substat3.talisman,tag=tsk.relicBuff.substat3.flat.talisman.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/talisman/flat/def
execute as @s[tag=tsk.relicBuffApplied.substat3.talisman,tag=tsk.relicBuff.substat3.flat.talisman.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/talisman/flat/maxhp
execute as @s[tag=tsk.relicBuffApplied.substat3.talisman,tag=tsk.relicBuff.substat3.flat.talisman.sc] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/talisman/flat/sc
execute as @s[tag=tsk.relicBuffApplied.substat3.talisman,tag=tsk.relicBuff.substat3.flat.talisman.critDmg] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/talisman/flat/critdmg
execute as @s[tag=tsk.relicBuffApplied.substat3.talisman,tag=tsk.relicBuff.substat3.flat.talisman.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/talisman/flat/str
execute as @s[tag=tsk.relicBuffApplied.substat3.talisman,tag=tsk.relicBuff.substat3.percentage.talisman.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/talisman/percentage/max_mana
execute as @s[tag=tsk.relicBuffApplied.substat3.talisman,tag=tsk.relicBuff.substat3.percentage.talisman.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/talisman/percentage/mana_regen
execute as @s[tag=tsk.relicBuffApplied.substat3.talisman,tag=tsk.relicBuff.substat3.percentage.talisman.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/talisman/percentage/maxhp
execute as @s[tag=tsk.relicBuffApplied.substat3.talisman,tag=tsk.relicBuff.substat3.percentage.talisman.critRate] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/talisman/percentage/critrate
execute as @s[tag=tsk.relicBuffApplied.substat3.talisman,tag=tsk.relicBuff.substat3.percentage.talisman.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/talisman/percentage/str
execute as @s[tag=tsk.relicBuffApplied.substat3.talisman,tag=tsk.relicBuff.substat3.percentage.talisman.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/talisman/percentage/def


execute as @s[tag=tsk.relicBuffApplied.substat4.talisman,tag=tsk.relicBuff.substat4.flat.talisman.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/talisman/flat/mana_regen
execute as @s[tag=tsk.relicBuffApplied.substat4.talisman,tag=tsk.relicBuff.substat4.flat.talisman.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/talisman/flat/max_mana
execute as @s[tag=tsk.relicBuffApplied.substat4.talisman,tag=tsk.relicBuff.substat4.flat.talisman.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/talisman/flat/def
execute as @s[tag=tsk.relicBuffApplied.substat4.talisman,tag=tsk.relicBuff.substat4.flat.talisman.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/talisman/flat/maxhp
execute as @s[tag=tsk.relicBuffApplied.substat4.talisman,tag=tsk.relicBuff.substat4.flat.talisman.sc] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/talisman/flat/sc
execute as @s[tag=tsk.relicBuffApplied.substat4.talisman,tag=tsk.relicBuff.substat4.flat.talisman.critDmg] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/talisman/flat/critdmg
execute as @s[tag=tsk.relicBuffApplied.substat4.talisman,tag=tsk.relicBuff.substat4.flat.talisman.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/talisman/flat/str
execute as @s[tag=tsk.relicBuffApplied.substat4.talisman,tag=tsk.relicBuff.substat4.percentage.talisman.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/talisman/percentage/max_mana
execute as @s[tag=tsk.relicBuffApplied.substat4.talisman,tag=tsk.relicBuff.substat4.percentage.talisman.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/talisman/percentage/mana_regen
execute as @s[tag=tsk.relicBuffApplied.substat4.talisman,tag=tsk.relicBuff.substat4.percentage.talisman.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/talisman/percentage/maxhp
execute as @s[tag=tsk.relicBuffApplied.substat4.talisman,tag=tsk.relicBuff.substat4.percentage.talisman.critRate] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/talisman/percentage/critrate
execute as @s[tag=tsk.relicBuffApplied.substat4.talisman,tag=tsk.relicBuff.substat4.percentage.talisman.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/talisman/percentage/str
execute as @s[tag=tsk.relicBuffApplied.substat4.talisman,tag=tsk.relicBuff.substat4.percentage.talisman.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:13b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"talisman"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/talisman/percentage/def

