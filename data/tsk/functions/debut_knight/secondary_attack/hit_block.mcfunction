scoreboard players set @s ray_success 1
summon area_effect_cloud ~ ~ ~ {Particle:"block snow_block",ReapplicationDelay:20,Radius:1f,RadiusPerTick:0.1f,Duration:100,Effects:[{Id:2,Amplifier:3b,Duration:100,ShowParticles:1b},{Id:15,Amplifier:3b,Duration:100,ShowParticles:1b},{Id:20,Amplifier:3b,Duration:60}]}
execute as @e[type=#tsk:attackable,distance=..14,tag=!tsk.icefrozenground.invul] at @s run damage @s 5 tsk:debut_knight/secondary_attack

execute positioned ~2 ~ ~ positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~1 ~ ~ positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~ ~ ~ positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~-1 ~ ~ positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~-2 ~ ~ positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~2 ~ ~1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~1 ~ ~1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~ ~ ~1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~-1 ~ ~1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~-2 ~ ~1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~2 ~ ~-1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~1 ~ ~-1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~ ~ ~-1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~-1 ~ ~-1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~-2 ~ ~-1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~1 ~ ~2 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~ ~ ~2 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~-1 ~ ~2 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~1 ~ ~-2 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~ ~ ~-2 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~-1 ~ ~-2 positioned over motion_blocking run setblock ~ ~ ~ snow
playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 100 0.2