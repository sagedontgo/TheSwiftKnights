# 
execute as @a[tag=!tsk.joined] run function tsk:player_first_join

# Actionbar
function tsk:display_proper_actionbar


# Avoid scoreboard overflow
execute as @a if score @s tsk.maxHp <= @s tsk.hp run scoreboard players operation @s tsk.hp = @s tsk.maxHp
execute as @a if score @s tsk.maxDef <= @s tsk.def run scoreboard players operation @s tsk.def = @s tsk.maxDef
execute as @a if score @s tsk.maxHunger <= @s tsk.hungerBar run scoreboard players operation @s tsk.hungerBar = @s tsk.maxHunger
execute as @a if score @s tsk.manaMax <= @s tsk.mana run scoreboard players operation @s tsk.mana = @s tsk.manaMax
execute as @a run scoreboard players operation @s tsk.strBackup = @s tsk.str
execute as @a if score @s tsk.mana matches ..0 run scoreboard players set @s tsk.mana 0

## Staff Functionality (tsk:staff)
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",count:1,components:{"minecraft:max_stack_size": 1, "minecraft:custom_data": {tsk:{item:"staff"}}}}},tag=!tsk.holdingStaff] at @s run function tsk:staff/equipped_staff
execute as @a[nbt=!{SelectedItem:{id:"minecraft:stick",count:1,components:{"minecraft:max_stack_size": 1, "minecraft:custom_data": {tsk:{item:"staff"}}}}},tag=tsk.holdingStaff] at @s run function tsk:staff/unequipped_staff

execute as @a[tag=tsk.holdingStaff] positioned ~ ~1.2 ~ at @s run tp @e[sort=nearest,limit=1,type=interaction,tag=tsk.staffInteraction] ~ ~1.2 ~
execute as @a[tag=tsk.holdingGrimoire] positioned ~ ~1.2 ~ at @s run tp @e[sort=nearest,limit=1,type=interaction,tag=tsk.grimoireInteraction] ~ ~1.2 ~

execute as @a[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:max_stack_size": 1, "minecraft:custom_data": {tsk:{item:"grimoire"}}}}},tag=!tsk.holdingGrimoire] at @s run function tsk:staff/grimoires/equipped_grimoire
execute as @a[nbt=!{SelectedItem:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:max_stack_size": 1, "minecraft:custom_data": {tsk:{item:"grimoire"}}}}},tag=tsk.holdingGrimoire] at @s run function tsk:staff/grimoires/unequipped_grimoire
execute as @a[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:max_stack_size": 1, "minecraft:custom_data": {tsk:{item:"grimoire"}}}}},tag=tsk.holdingGrimoire] at @s run function tsk:staff/grimoires/particles

execute as @e[type=interaction,tag=tsk.grimoireInteraction] on target run function tsk:staff/grimoires/check

execute as @a[tag=tsk.holdingStaff,scores={tsk.leftClick=1..}] run function tsk:staff/ability_check/riff_ability
execute as @a[tag=tsk.holdingStaff,scores={tsk.rightClick=1..}] at @s run function tsk:staff/ability_check/shield_ability
execute as @a[tag=tsk.holdingStaff,predicate=tsk:is_sneaking,scores={tsk.leftClick=1..}] at @s run function tsk:staff/ability_check/anthem_ability
execute as @a[tag=tsk.holdingStaff,predicate=tsk:is_sneaking,scores={tsk.rightClick=1..}] at @s run function tsk:staff/ability_check/trick_ability

execute as @e[type=text_display,tag=tsk.clickIndicator] if score @s tsk.indicatorTimer matches 1.. run scoreboard players remove @s tsk.indicatorTimer 1
execute as @e[type=text_display,tag=tsk.clickIndicator] unless score @s tsk.indicatorTimer matches 1.. run kill @s

execute as @a[scores={tsk.leftClickTimer=1..}] run scoreboard players remove @s tsk.leftClickTimer 1
execute as @a[scores={tsk.leftClickTimer=..1}] run function tsk:staff/reset_left_click
execute as @a[scores={tsk.rightClickTimer=1..}] run scoreboard players remove @s tsk.rightClickTimer 1
execute as @a[scores={tsk.rightClickTimer=..1}] run function tsk:staff/reset_right_click

execute as @a[tag=tsk.castedAbility] if score @s tsk.abilityCooldownTimer matches 1.. run scoreboard players remove @s tsk.abilityCooldownTimer 1 
execute as @a[tag=tsk.castedAbility] if score @s tsk.abilityCooldownTimer matches ..1 run function tsk:staff/reset_ability_cooldown

## HP System (tsk:hp)
execute as @a[nbt=!{active_effects:[{id:"minecraft:resistance"}]}] run effect give @s resistance infinite 4 true
execute as @e[scores={tsk.preCalDamageTaken=1..}] as @s run function tsk:hp/calc_dmg_taken
execute as @e[scores={tsk.preCalDamageDealt=1..}] as @s run function tsk:hp/calc_dmg_dealt

execute as @e[type=#tsk:all,tag=!tsk.healed] run function tsk:hp/mobs/mobs

execute as @a store result score @s tsk.hpDiff run scoreboard players operation @s tsk.lastTickHp -= @s tsk.hp
execute as @e[scores={tsk.hpDiff=1..}] store result score @s tsk.hpDiffStorage run scoreboard players get @s tsk.hpDiff
execute as @a run scoreboard players operation @s tsk.lastTickHp = @s tsk.hp

execute as @e[type=#tsk:all] as @s store result score @s tsk.mobRealHp run data get entity @s Health 1
execute as @e[type=#tsk:all] as @s store result score @s tsk.hpDiff if score @s tsk.mobLastTickHp > @s tsk.mobRealHp run scoreboard players operation @s tsk.mobLastTickHp -= @s tsk.mobRealHp
execute as @e[type=#tsk:all,scores={tsk.hpDiff=1..}] store result score @s tsk.hpDiffStorage run scoreboard players get @s tsk.hpDiff
execute as @e[type=#tsk:all,scores={tsk.hpDiff=1..}] run function tsk:hp/calc_new_hp
execute as @e[type=#tsk:all] as @s run scoreboard players operation @s tsk.mobLastTickHp = @s tsk.mobRealHp

execute as @e[type=#tsk:all,tag=!tsk.hurtTime,nbt={HurtTime:10s}] run tag @s add tsk.hurtTime
execute as @e[type=#tsk:all,tag=tsk.hurtTime,scores={tsk.healthDisplayTimer=1..}] run scoreboard players remove @s tsk.healthDisplayTimer 1
execute as @e[type=#tsk:all,nbt={HurtTime:10s}] at @s run function tsk:hp/hp_display
execute as @e[type=#tsk:all,scores={tsk.healthDisplayTimer=..1}] if entity @s[tag=tsk.hurtTime] at @s run function tsk:hp/hp_undisplay

execute as @e[type=text_display,tag=tsk.dmgIndicator] as @s unless score @s tsk.indicatorTimer matches 1.. run kill @s
execute as @e[type=text_display,tag=tsk.dmgIndicator] as @s if score @s tsk.indicatorTimer matches 1.. run scoreboard players remove @s tsk.indicatorTimer 1
execute as @e[type=text_display,tag=tsk.hpIndicator] as @s unless score @s tsk.indicatorTimer matches 1.. run kill @s
execute as @e[type=text_display,tag=tsk.hpIndicator] as @s if score @s tsk.indicatorTimer matches 1.. run scoreboard players remove @s tsk.indicatorTimer 1

execute as @a[nbt={active_effects:[{id:"minecraft:health_boost",amplifier:100b}]}] run function tsk:hp/clear_aec

# Fall Damage // enable if you want fall damage 
# execute as @a store result score @s tsk.fallDamageHeight run data get entity @s FallDistance 1
# execute as @a[] if score @s tsk.fallDamageHeight matches 30.. at @s unless block ~ ~-1 ~ #tsk:cushions_fall_damage unless block ~ ~ ~ #tsk:cushions_fall_damage_inside unless block ~ ~-1 ~ #tsk:cushions_fall_damage_inside run tag @s add tsk.deathFallDamage
# execute as @a if score @s tsk.fallDamageHeight matches 15..29 at @s unless block ~ ~-1 ~ #tsk:cushions_fall_damage unless block ~ ~ ~ #tsk:cushions_fall_damage_inside unless block ~ ~-1 ~ #tsk:cushions_fall_damage_inside run tag @s add tsk.stunFallDamage
# execute as @a[tag=tsk.deathFallDamage] at @s run function tsk:hp/death_fall_damage
# execute as @a[tag=tsk.stunFallDamage] at @s run function tsk:hp/stun_fall_damage
# execute as @a[scores={tsk.bleedingTimer=1..}] at @s run function tsk:hp/bleeding_timer

# Hunger
effect give @a[scores={tsk.hunger=18..},tag=!tsk.full] hunger 1 255 true
effect give @a[scores={tsk.hunger=..14},tag=!tsk.full] saturation 1 1 true
effect give @a[tag=tsk.full] saturation infinite 3 true

# "Too Full" Bar
execute as @a[scores={tsk.hungerBar=20..},tag=!tsk.full] run function tsk:hp/hunger/full
execute as @a[scores={tsk.digestionTimer=1..},tag=tsk.ate] run scoreboard players remove @s tsk.digestionTimer 1
execute as @a[scores={tsk.digestionTimer=..1},tag=tsk.ate] run function tsk:hp/hunger/ate
execute as @a[scores={tsk.digestionTimer=1..},tag=tsk.full] run scoreboard players remove @s tsk.digestionTimer 1
execute as @a[scores={tsk.digestionTimer=..1},tag=tsk.full] run function tsk:hp/hunger/digested

# Death.
execute as @a[scores={tsk.hp=..0},tag=!tsk.died] at @s run function tsk:hp/death/roll
execute as @a[scores={tsk.resRoll.animationTimer=1..}] at @s run function tsk:hp/death/loop
execute as @e[type=text_display,tag=tsk.hpIndicator] unless predicate tsk:hp_display_riding run kill @s
execute as @e[type=#tsk:all,scores={tsk.hp=..0}] at @s run function tsk:hp/death/mob_death

# Potions
execute as @e[type=potion,nbt={Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}},tag=!tsk.healingPotionWithMarker] at @s run function tsk:hp/potion/healing/replace
execute as @e[type=potion,tag=tsk.healingPotionWithMarker] store result entity @s Air short 1 run time query gametime
execute as @e[type=marker,tag=tsk.newHealingPotion.marker] at @s unless predicate tsk:riding_potion run function tsk:hp/potion/healing/landed
execute as @e[type=potion,nbt={Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_healing"}}}},tag=!tsk.strongHealingPotionWithMarker] at @s run function tsk:hp/potion/strong_healing/replace
execute as @e[type=potion,tag=tsk.strongHealingPotionWithMarker] store result entity @s Air short 1 run time query gametime
execute as @e[type=marker,tag=tsk.newStrongHealingPotion.marker] at @s unless predicate tsk:riding_potion run function tsk:hp/potion/strong_healing/landed

execute as @e[nbt={active_effects:[{id:"minecraft:regeneration"}]},tag=!tsk.regenerating] run function tsk:hp/potion/regen/equip
execute as @e[scores={tsk.regenDuration=1..},tag=tsk.hasRegeneration] run scoreboard players remove @s tsk.regenDuration 1
execute as @e[scores={tsk.regenDuration=1..1},tag=tsk.hasRegeneration] run function tsk:hp/potion/regen/wear_off
execute as @e[tag=tsk.hasRegeneration,nbt=!{active_effects:[{id:"minecraft:regeneration"}]}] run function tsk:hp/potion/regen/wear_off

execute as @e[scores={tsk.regenDuration=1..},tag=!tsk.regenTimerStarted] as @s run function tsk:hp/potion/regen/timer
execute as @e[scores={tsk.secondsClock=1..},tag=tsk.hasRegeneration] if score @s tsk.secondsClock matches 1.. as @s run scoreboard players remove @s tsk.secondsClock 1
execute as @e[scores={tsk.secondsClock=1..},tag=tsk.hasRegeneration] if score @s tsk.secondsClock matches ..1 as @s run function tsk:hp/potion/regen/regenerate

# Absorption
execute as @a[nbt={active_effects:[{id:"minecraft:absorption"}]},tag=!tsk.hasAbsorption] run function tsk:hp/absorption/equip
execute as @a[scores={tsk.absorptionDuration=1..},tag=tsk.hasAbsorption] run scoreboard players remove @s tsk.absorptionDuration 1
execute as @a[scores={tsk.absorptionDuration=..1},tag=tsk.hasAbsorption] run function tsk:hp/absorption/wear_off
execute as @a[tag=tsk.hasAbsorption,nbt=!{active_effects:[{id:"minecraft:absorption"}]}] run function tsk:hp/absorption/wear_off

# Mana
execute as @a[tag=!tsk.regeneratingMana] if score @s tsk.mana < @s tsk.manaMax run function tsk:mana/start_timer
execute as @a if score @s tsk.manaRegenTimer matches 1.. as @s run scoreboard players remove @s tsk.manaRegenTimer 1
execute as @a if score @s tsk.manaRegenTimer matches ..1 as @s run function tsk:mana/regenerate
execute as @a[tag=tsk.regeneratingMana] if score @s tsk.mana >= @s tsk.manaMax run function tsk:mana/stop

# Combat
execute as @a[tag=tsk.dashReady] at @s if predicate tsk:is_sneaking run function tsk:combat/dash
execute as @a[tag=tsk.jumped] if score @s tsk.jumpCount matches 1.. if predicate tsk:is_on_ground at @s as @e[sort=nearest,distance=0.01..3] at @s run function tsk:combat/jump_hit with storage tsk:attribute attribute
execute as @a[tag=tsk.jumped] if score @s tsk.jumpCount matches 1.. if predicate tsk:is_on_ground at @s run function tsk:combat/used_jump
execute as @a[tag=!tsk.jumped,scores={tsk.jumpCount=1..}] run scoreboard players reset @s tsk.jumpCount
execute as @a store success score @s tsk.dashReady run execute if entity @s[tag=tsk.dashReady]
execute as @a store success score @s tsk.jumpReady run execute if entity @s[tag=tsk.jumped]

# Elemental Reactions

# Apply
execute as @e[type=!#tsk:exclude] if predicate tsk:elements/fire at @s run function tsk:elements/apply/fire
execute as @e[type=!#tsk:exclude] at @s if predicate tsk:elements/water run function tsk:elements/apply/water
execute as @e[type=!#tsk:exclude,tag=!tsk.air] at @s if entity @s[advancements={tsk:combat/hit_by_wind_charge=true}] run function tsk:elements/apply/air
# execute as @e[type=!#tsk:exclude,tag=!tsk.ice] at @s run function tsk:elements/apply/ice
# execute as @e[type=!#tsk:exclude,tag=!tsk.earth] at @s run function tsk:elements/apply/earth

execute as @e store success score @s tsk.elementIsActive.air run execute if entity @s[tag=tsk.air]
execute as @e store success score @s tsk.elementIsActive.water run execute if entity @s[tag=tsk.water]
execute as @e store success score @s tsk.elementIsActive.fire run execute if entity @s[tag=tsk.fire]
execute as @e store success score @s tsk.elementIsActive.earth run execute if entity @s[tag=tsk.earth]
execute as @e store success score @s tsk.elementIsActive.ice run execute if entity @s[tag=tsk.ice]

execute as @e[tag=tsk.air,scores={tsk.elementTimer.air=1..}] run scoreboard players remove @s tsk.elementTimer.air 1
execute as @e[tag=tsk.earth,scores={tsk.elementTimer.earth=1..}] run scoreboard players remove @s tsk.elementTimer.earth 1
execute as @e[tag=tsk.fire,scores={tsk.elementTimer.fire=1..}] run scoreboard players remove @s tsk.elementTimer.fire 1
execute as @e[tag=tsk.ice,scores={tsk.elementTimer.ice=1..}] run scoreboard players remove @s tsk.elementTimer.ice 1
execute as @e[tag=tsk.water,scores={tsk.elementTimer.water=1..}] run scoreboard players remove @s tsk.elementTimer.water 1

execute as @e[tag=tsk.air,scores={tsk.elementTimer.air=..1}] run function tsk:elements/remove/air
execute as @e[tag=tsk.earth,scores={tsk.elementTimer.earth=..1}] run function tsk:elements/remove/earth
execute as @e[tag=tsk.fire,scores={tsk.elementTimer.fire=..1}] run function tsk:elements/remove/fire
execute as @e[tag=tsk.ice,scores={tsk.elementTimer.ice=..1}] run function tsk:elements/remove/ice
execute as @e[tag=tsk.water,scores={tsk.elementTimer.water=..1}] run function tsk:elements/remove/water

# Reactions

execute as @e[tag=tsk.air,tag=tsk.ice] at @s run function tsk:elements/reactions/blizzard
execute as @e[tag=tsk.air,tag=tsk.earth] at @s run function tsk:elements/reactions/dust_storm
execute as @e[tag=tsk.air,tag=tsk.fire] at @s run function tsk:elements/reactions/wildfire
execute as @e[type=minecraft:armor_stand,tag=tsk.reactionEntity.wildfire_move] at @s run function tsk:elements/particles/wildfire_move
execute as @e[type=minecraft:armor_stand,tag=tsk.reactionEntity.wildfire_rotate] at @s run function tsk:elements/particles/wildfire_rotate
execute as @e[type=minecraft:armor_stand,tag=tsk.reactionEntity.wildfire] if score @s tsk.reactionTimer.wildfire matches 1.. run scoreboard players remove @s tsk.reactionTimer.wildfire 1
execute as @e[type=minecraft:armor_stand,tag=tsk.reactionEntity.wildfire] if score @s tsk.reactionTimer.wildfire matches ..1 run kill @s
execute as @e[tag=tsk.air,tag=tsk.water] at @s run function tsk:elements/reactions/storm

execute as @e[tag=tsk.ice,tag=tsk.earth] at @s run function tsk:elements/reactions/permafrost
execute as @e[tag=tsk.ice,tag=tsk.fire] at @s run function tsk:elements/reactions/melt
execute as @e[tag=tsk.ice,tag=tsk.water] at @s run function tsk:elements/reactions/freeze

execute as @e[tag=tsk.earth,tag=tsk.fire] at @s run function tsk:elements/reactions/magma_flow
execute as @e[tag=tsk.earth,tag=tsk.water] at @s run function tsk:elements/reactions/quicksand

execute as @e[tag=tsk.fire,tag=tsk.water] at @s run function tsk:elements/reactions/scalding_mist


# Timer
execute as @e[tag=tsk.blizzard,scores={tsk.reactionTimer.blizzard=1..}] run scoreboard players remove @s tsk.reactionTimer.blizzard 1
execute as @e[tag=tsk.blizzard,scores={tsk.reactionTimer.blizzard=..1}] run tag @s remove tsk.blizzard

execute as @e[tag=tsk.freeze,scores={tsk.reactionTimer.freeze=1..}] run scoreboard players remove @s tsk.reactionTimer.freeze 1
execute as @e[tag=tsk.freeze,scores={tsk.reactionTimer.freeze=..1}] run function tsk:elements/remove/reactions/freeze

execute as @e[tag=tsk.quicksand,scores={tsk.reactionTimer.quicksand=1..}] run scoreboard players remove @s tsk.reactionTimer.quicksand 1
execute as @e[tag=tsk.quicksand,scores={tsk.reactionTimer.quicksand=..1}] run function tsk:elements/remove/reactions/quicksand

execute as @e[tag=tsk.dust_storm,scores={tsk.reactionTimer.dust_storm=1..}] run scoreboard players remove @s tsk.reactionTimer.dust_storm 1
execute as @e[tag=tsk.dust_storm,scores={tsk.reactionTimer.dust_storm=..1}] run tag @s remove tsk.dust_storm

execute as @e[tag=tsk.magma_flow,scores={tsk.reactionTimer.magma_flow=1..}] run scoreboard players remove @s tsk.reactionTimer.magma_flow 1
execute as @e[tag=tsk.magma_flow,scores={tsk.reactionTimer.magma_flow=..1}] run tag @s remove tsk.magma_flow

execute as @e[tag=tsk.melt,scores={tsk.reactionTimer.melt=1..}] run scoreboard players remove @s tsk.reactionTimer.melt 1
execute as @e[tag=tsk.melt,scores={tsk.reactionTimer.melt=..1}] run tag @s remove tsk.melt

execute as @e[tag=tsk.permafrost,scores={tsk.reactionTimer.permafrost=1..}] run scoreboard players remove @s tsk.reactionTimer.permafrost 1
execute as @e[tag=tsk.permafrost,scores={tsk.reactionTimer.permafrost=..1}] run tag @s remove tsk.permafrost

execute as @e[tag=tsk.quicksand,scores={tsk.reactionTimer.quicksand=1..}] run scoreboard players remove @s tsk.reactionTimer.quicksand 1
execute as @e[tag=tsk.quicksand,scores={tsk.reactionTimer.quicksand=..1}] run tag @s remove tsk.quicksand

execute as @e[tag=tsk.scalding_mist,scores={tsk.reactionTimer.scalding_mist=1..}] run scoreboard players remove @s tsk.reactionTimer.scalding_mist 1
execute as @e[tag=tsk.scalding_mist,scores={tsk.reactionTimer.scalding_mist=..1}] run tag @s remove tsk.scalding_mist

execute as @e[tag=tsk.storm,scores={tsk.reactionTimer.storm=1..}] run scoreboard players remove @s tsk.reactionTimer.storm 1
execute as @e[tag=tsk.storm,scores={tsk.reactionTimer.storm=..1}] run tag @s remove tsk.storm

execute as @e[tag=tsk.wildfire,scores={tsk.reactionTimer.wildfire=1..}] run scoreboard players remove @s tsk.reactionTimer.wildfire 1
execute as @e[tag=tsk.wildfire,scores={tsk.reactionTimer.wildfire=..1}] run tag @s remove tsk.wildfire



execute as @e[type=text_display,tag=tsk.reactionIndicator] as @s unless score @s tsk.indicatorTimer matches 1.. run kill @s
execute as @e[type=text_display,tag=tsk.reactionIndicator] as @s if score @s tsk.indicatorTimer matches 1.. run scoreboard players remove @s tsk.indicatorTimer 1
execute as @e[type=text_display,tag=tsk.reactionIndicator] as @s at @s if score @s tsk.indicatorTimer matches 18..20 run function tsk:elements/particles/end_reaction_text

# Relics
execute as @a[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:max_stack_size": 1, "minecraft:custom_data": {tsk: "relicEditMode"}}}},tag=!tsk.holdingEditBook] at @s run function tsk:relics/edit_mode/equipped_edit_book
execute as @a[nbt=!{SelectedItem:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:max_stack_size": 1, "minecraft:custom_data": {tsk: "relicEditMode"}}}},tag=tsk.holdingEditBook] at @s run function tsk:relics/edit_mode/unequipped_edit_book
execute as @e[type=interaction,tag=tsk.relicEditInteraction] on target at @s run function tsk:relics/edit_mode/check
execute as @a[tag=tsk.holdingEditBook] positioned ~ ~1.2 ~ at @s run tp @e[sort=nearest,limit=1,type=interaction,tag=tsk.relicEditInteraction] ~ ~1.2 ~

execute as @a[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_data":{tsk:{artifactType:"charm",item:"relic",artifactMainStat:"empty"}}}}}] at @s run function tsk:relics/roll_stats/charm
execute as @a[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_data":{tsk:{artifactType:"amulet",item:"relic",artifactMainStat:"empty"}}}}}] at @s run function tsk:relics/roll_stats/amulet
execute as @a[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_data":{tsk:{artifactType:"talisman",item:"relic",artifactMainStat:"empty"}}}}}] at @s run function tsk:relics/roll_stats/talisman
execute as @a[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_data":{tsk:{artifactType:"tassel",item:"relic",artifactMainStat:"empty"}}}}}] at @s run function tsk:relics/roll_stats/tassel
execute as @a[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_data":{tsk:{artifactType:"necklace",item:"relic",artifactMainStat:"empty"}}}}}] at @s run function tsk:relics/roll_stats/necklace

### THE KNIGHTS

## KNIGHT1
execute as @a[tag=tsk.knight1,tag=!tsk.abilityIsActive.tranquilTide] at @s if block ~ ~ ~ water run function tsk:ability_functions/knight1/passive
execute as @a[tag=tsk.abilityIsActive.tranquilTide] at @s run function tsk:ability_functions/knight1/passive/tranquil_tide/loop
execute as @a[tag=tsk.knight1,tag=!tsk.abilityIsActive.watersight] at @s if block ~ ~-1 ~ water if block ~ ~2 ~ water run function tsk:knights/knight1/passive/watersight
execute as @a[tag=tsk.abilityIsActive.watersight] at @s unless block ~ ~-1 ~ water unless block ~ ~2 ~ water run function tsk:ability_functions/knight1/passive/watersight/stop
execute as @a[tag=tsk.knight1,tag=!tsk.abilityIsActive.aquaAffinity] at @s if block ~ ~-1 ~ water if block ~ ~2 ~ water run function tsk:knights/knight1/passive/aqua_affinity
execute as @a[tag=tsk.abilityIsActive.aquaAffinity] at @s unless block ~ ~-1 ~ water unless block ~ ~2 ~ water run function tsk:ability_functions/knight1/passive/aqua_affinity/stop

