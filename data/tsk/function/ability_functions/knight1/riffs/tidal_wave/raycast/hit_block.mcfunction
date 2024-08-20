
execute if block ~ ~ ~ fire run particle large_smoke ~ ~ ~ 0.3 0.3 0.3 0 10
execute if block ~ ~ ~ fire run playsound block.fire.extinguish player @a[distance=..15]
execute if block ~ ~ ~ fire run setblock ~ ~ ~ air

execute if block ~ ~ ~ campfire run particle large_smoke ~ ~ ~ 0.3 0.3 0.3 0 10
execute if block ~ ~ ~ campfire run playsound block.fire.extinguish player @a[distance=..15]
execute if block ~ ~ ~ campfire run setblock ~ ~ ~ campfire[lit=false]

execute if block ~ ~ ~ soul_campfire run particle large_smoke ~ ~ ~ 0.3 0.3 0.3 0 10
execute if block ~ ~ ~ soul_campfire run playsound block.fire.extinguish player @a[distance=..15]
execute if block ~ ~ ~ soul_campfire run setblock ~ ~ ~ soul_campfire[lit=false]

execute if block ~ ~ ~ farmland run setblock ~ ~ ~ farmland[moisture=7]
execute if block ~ ~ ~ cauldron run setblock ~ ~ ~ water_cauldron[level=3]
execute if block ~ ~ ~ lava run setblock ~ ~ ~ obsidian
execute if block ~ ~ ~ #crops run setblock ~ ~ ~ air destroy

execute if block ~ ~ ~ white_concrete_powder run setblock ~ ~ ~ white_concrete
execute if block ~ ~ ~ light_gray_concrete_powder run setblock ~ ~ ~ light_gray_concrete
execute if block ~ ~ ~ gray_concrete_powder run setblock ~ ~ ~ gray_concrete
execute if block ~ ~ ~ black_concrete_powder run setblock ~ ~ ~ black_concrete
execute if block ~ ~ ~ brown_concrete_powder run setblock ~ ~ ~ brown_concrete
execute if block ~ ~ ~ red_concrete_powder run setblock ~ ~ ~ red_concrete
execute if block ~ ~ ~ orange_concrete_powder run setblock ~ ~ ~ orange_concrete
execute if block ~ ~ ~ yellow_concrete_powder run setblock ~ ~ ~ yellow_concrete
execute if block ~ ~ ~ lime_concrete_powder run setblock ~ ~ ~ lime_concrete
execute if block ~ ~ ~ green_concrete_powder run setblock ~ ~ ~ green_concrete
execute if block ~ ~ ~ cyan_concrete_powder run setblock ~ ~ ~ cyan_concrete
execute if block ~ ~ ~ light_blue_concrete_powder run setblock ~ ~ ~ light_blue_concrete
execute if block ~ ~ ~ blue_concrete_powder run setblock ~ ~ ~ blue_concrete
execute if block ~ ~ ~ purple_concrete_powder run setblock ~ ~ ~ purple_concrete
execute if block ~ ~ ~ magenta_concrete_powder run setblock ~ ~ ~ magenta_concrete
execute if block ~ ~ ~ pink_concrete_powder run setblock ~ ~ ~ pink_concrete

execute unless block ~ ~ ~ fire run scoreboard players set #hit tsk.castTemp 1
