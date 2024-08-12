execute as @s at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt={Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/give_stats/amulet



execute as @s[tag=tsk.relicBuffApplied.amulet,tag=tsk.relicBuff.flat.amulet.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/remove_stats/amulet/flat/mana_regen
execute as @s[tag=tsk.relicBuffApplied.amulet,tag=tsk.relicBuff.flat.amulet.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/remove_stats/amulet/flat/max_mana
execute as @s[tag=tsk.relicBuffApplied.amulet,tag=tsk.relicBuff.percentage.amulet.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/remove_stats/amulet/percentage/max_mana
execute as @s[tag=tsk.relicBuffApplied.amulet,tag=tsk.relicBuff.percentage.amulet.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/remove_stats/amulet/percentage/mana_regen

# Substats
execute as @s[tag=tsk.relicBuffApplied.substat1.amulet,tag=tsk.relicBuff.substat1.flat.amulet.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/amulet/flat/mana_regen
execute as @s[tag=tsk.relicBuffApplied.substat1.amulet,tag=tsk.relicBuff.substat1.flat.amulet.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/amulet/flat/max_mana
execute as @s[tag=tsk.relicBuffApplied.substat1.amulet,tag=tsk.relicBuff.substat1.flat.amulet.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/amulet/flat/def
execute as @s[tag=tsk.relicBuffApplied.substat1.amulet,tag=tsk.relicBuff.substat1.flat.amulet.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/amulet/flat/maxhp
execute as @s[tag=tsk.relicBuffApplied.substat1.amulet,tag=tsk.relicBuff.substat1.flat.amulet.sc] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/amulet/flat/sc
execute as @s[tag=tsk.relicBuffApplied.substat1.amulet,tag=tsk.relicBuff.substat1.flat.amulet.critDmg] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/amulet/flat/critdmg
execute as @s[tag=tsk.relicBuffApplied.substat1.amulet,tag=tsk.relicBuff.substat1.flat.amulet.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/amulet/flat/str
execute as @s[tag=tsk.relicBuffApplied.substat1.amulet,tag=tsk.relicBuff.substat1.percentage.amulet.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/amulet/percentage/max_mana
execute as @s[tag=tsk.relicBuffApplied.substat1.amulet,tag=tsk.relicBuff.substat1.percentage.amulet.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/amulet/percentage/mana_regen
execute as @s[tag=tsk.relicBuffApplied.substat1.amulet,tag=tsk.relicBuff.substat1.percentage.amulet.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/amulet/percentage/maxhp
execute as @s[tag=tsk.relicBuffApplied.substat1.amulet,tag=tsk.relicBuff.substat1.percentage.amulet.critRate] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/amulet/percentage/critrate
execute as @s[tag=tsk.relicBuffApplied.substat1.amulet,tag=tsk.relicBuff.substat1.percentage.amulet.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/amulet/percentage/str
execute as @s[tag=tsk.relicBuffApplied.substat1.amulet,tag=tsk.relicBuff.substat1.percentage.amulet.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl2/remove_stats/amulet/percentage/def


execute as @s[tag=tsk.relicBuffApplied.substat2.amulet,tag=tsk.relicBuff.substat2.flat.amulet.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/amulet/flat/mana_regen
execute as @s[tag=tsk.relicBuffApplied.substat2.amulet,tag=tsk.relicBuff.substat2.flat.amulet.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/amulet/flat/max_mana
execute as @s[tag=tsk.relicBuffApplied.substat2.amulet,tag=tsk.relicBuff.substat2.flat.amulet.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/amulet/flat/def
execute as @s[tag=tsk.relicBuffApplied.substat2.amulet,tag=tsk.relicBuff.substat2.flat.amulet.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/amulet/flat/maxhp
execute as @s[tag=tsk.relicBuffApplied.substat2.amulet,tag=tsk.relicBuff.substat2.flat.amulet.sc] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/amulet/flat/sc
execute as @s[tag=tsk.relicBuffApplied.substat2.amulet,tag=tsk.relicBuff.substat2.flat.amulet.critDmg] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/amulet/flat/critdmg
execute as @s[tag=tsk.relicBuffApplied.substat2.amulet,tag=tsk.relicBuff.substat2.flat.amulet.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/amulet/flat/str
execute as @s[tag=tsk.relicBuffApplied.substat2.amulet,tag=tsk.relicBuff.substat2.percentage.amulet.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/amulet/percentage/max_mana
execute as @s[tag=tsk.relicBuffApplied.substat2.amulet,tag=tsk.relicBuff.substat2.percentage.amulet.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/amulet/percentage/mana_regen
execute as @s[tag=tsk.relicBuffApplied.substat2.amulet,tag=tsk.relicBuff.substat2.percentage.amulet.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/amulet/percentage/maxhp
execute as @s[tag=tsk.relicBuffApplied.substat2.amulet,tag=tsk.relicBuff.substat2.percentage.amulet.critRate] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/amulet/percentage/critrate
execute as @s[tag=tsk.relicBuffApplied.substat2.amulet,tag=tsk.relicBuff.substat2.percentage.amulet.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/amulet/percentage/str
execute as @s[tag=tsk.relicBuffApplied.substat2.amulet,tag=tsk.relicBuff.substat2.percentage.amulet.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl4/remove_stats/amulet/percentage/def

execute as @s[tag=tsk.relicBuffApplied.substat3.amulet,tag=tsk.relicBuff.substat3.flat.amulet.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/amulet/flat/mana_regen
execute as @s[tag=tsk.relicBuffApplied.substat3.amulet,tag=tsk.relicBuff.substat3.flat.amulet.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/amulet/flat/max_mana
execute as @s[tag=tsk.relicBuffApplied.substat3.amulet,tag=tsk.relicBuff.substat3.flat.amulet.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/amulet/flat/def
execute as @s[tag=tsk.relicBuffApplied.substat3.amulet,tag=tsk.relicBuff.substat3.flat.amulet.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/amulet/flat/maxhp
execute as @s[tag=tsk.relicBuffApplied.substat3.amulet,tag=tsk.relicBuff.substat3.flat.amulet.sc] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/amulet/flat/sc
execute as @s[tag=tsk.relicBuffApplied.substat3.amulet,tag=tsk.relicBuff.substat3.flat.amulet.critDmg] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/amulet/flat/critdmg
execute as @s[tag=tsk.relicBuffApplied.substat3.amulet,tag=tsk.relicBuff.substat3.flat.amulet.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/amulet/flat/str
execute as @s[tag=tsk.relicBuffApplied.substat3.amulet,tag=tsk.relicBuff.substat3.percentage.amulet.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/amulet/percentage/max_mana
execute as @s[tag=tsk.relicBuffApplied.substat3.amulet,tag=tsk.relicBuff.substat3.percentage.amulet.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/amulet/percentage/mana_regen
execute as @s[tag=tsk.relicBuffApplied.substat3.amulet,tag=tsk.relicBuff.substat3.percentage.amulet.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/amulet/percentage/maxhp
execute as @s[tag=tsk.relicBuffApplied.substat3.amulet,tag=tsk.relicBuff.substat3.percentage.amulet.critRate] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/amulet/percentage/critrate
execute as @s[tag=tsk.relicBuffApplied.substat3.amulet,tag=tsk.relicBuff.substat3.percentage.amulet.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/amulet/percentage/str
execute as @s[tag=tsk.relicBuffApplied.substat3.amulet,tag=tsk.relicBuff.substat3.percentage.amulet.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl6/remove_stats/amulet/percentage/def

execute as @s[tag=tsk.relicBuffApplied.substat4.amulet,tag=tsk.relicBuff.substat4.flat.amulet.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/amulet/flat/mana_regen
execute as @s[tag=tsk.relicBuffApplied.substat4.amulet,tag=tsk.relicBuff.substat4.flat.amulet.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/amulet/flat/max_mana
execute as @s[tag=tsk.relicBuffApplied.substat4.amulet,tag=tsk.relicBuff.substat4.flat.amulet.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/amulet/flat/def
execute as @s[tag=tsk.relicBuffApplied.substat4.amulet,tag=tsk.relicBuff.substat4.flat.amulet.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/amulet/flat/maxhp
execute as @s[tag=tsk.relicBuffApplied.substat4.amulet,tag=tsk.relicBuff.substat4.flat.amulet.sc] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/amulet/flat/sc
execute as @s[tag=tsk.relicBuffApplied.substat4.amulet,tag=tsk.relicBuff.substat4.flat.amulet.critDmg] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/amulet/flat/critdmg
execute as @s[tag=tsk.relicBuffApplied.substat4.amulet,tag=tsk.relicBuff.substat4.flat.amulet.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/amulet/flat/str
execute as @s[tag=tsk.relicBuffApplied.substat4.amulet,tag=tsk.relicBuff.substat4.percentage.amulet.maxMana] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/amulet/percentage/max_mana
execute as @s[tag=tsk.relicBuffApplied.substat4.amulet,tag=tsk.relicBuff.substat4.percentage.amulet.manaRegen] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/amulet/percentage/mana_regen
execute as @s[tag=tsk.relicBuffApplied.substat4.amulet,tag=tsk.relicBuff.substat4.percentage.amulet.maxHp] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/amulet/percentage/maxhp
execute as @s[tag=tsk.relicBuffApplied.substat4.amulet,tag=tsk.relicBuff.substat4.percentage.amulet.critRate] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/amulet/percentage/critrate
execute as @s[tag=tsk.relicBuffApplied.substat4.amulet,tag=tsk.relicBuff.substat4.percentage.amulet.str] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/amulet/percentage/str
execute as @s[tag=tsk.relicBuffApplied.substat4.amulet,tag=tsk.relicBuff.substat4.percentage.amulet.def] at @s if entity @e[sort=nearest,limit=1,type=chest_boat,nbt=!{Items:[{id:"minecraft:popped_chorus_fruit",Slot:12b,count:1,components:{"minecraft:custom_data":{tsk:{artifactType:"amulet"}}}}]}] run function tsk:relics/sub_stats/lvl8/remove_stats/amulet/percentage/def
