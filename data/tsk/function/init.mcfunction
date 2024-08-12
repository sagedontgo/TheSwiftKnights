

forceload add 0 0 16 16

# Statistics
## ID 
scoreboard objectives add tsk.id dummy

## HP
scoreboard objectives add tsk.lastTickHp dummy
scoreboard objectives add tsk.hpDiff dummy
scoreboard objectives add tsk.hpDiffStorage dummy
scoreboard objectives add tsk.hp dummy
scoreboard objectives add tsk.mobRealHp dummy
scoreboard objectives add tsk.mobLastTickHp dummy
scoreboard objectives add tsk.maxHp dummy
scoreboard objectives add tsk.healthDisplayTimer dummy
scoreboard objectives add tsk.fallDamageHeight dummy
scoreboard objectives add tsk.regenDuration dummy
scoreboard objectives add tsk.regenAmplifier dummy
scoreboard objectives add tsk.absorptionDuration dummy
scoreboard objectives add tsk.absorptionAmplifier dummy
scoreboard objectives add tsk.absorptionAddHearts dummy
scoreboard objectives add tsk.resRoll dummy
scoreboard objectives add tsk.resRoll.animationTimer dummy


## DEF
scoreboard objectives add tsk.def dummy
scoreboard objectives add tsk.defStorage dummy
scoreboard objectives add tsk.tempDef dummy
scoreboard objectives add tsk.maxDef dummy

## FULLNESS
scoreboard objectives add tsk.hunger food
scoreboard objectives add tsk.maxHunger dummy
scoreboard objectives add tsk.hungerBar dummy

## DEX/CON
scoreboard objectives add tsk.dexterity dummy
scoreboard objectives add tsk.constitution dummy


## MANA
scoreboard objectives add tsk.mana dummy
scoreboard objectives add tsk.manaMax dummy
scoreboard objectives add tsk.manaRegenRate dummy
scoreboard objectives add tsk.manaRegenTimer.stat dummy

## STRENGTH AND CRIT
scoreboard objectives add tsk.str dummy
scoreboard objectives add tsk.strBackup dummy
scoreboard objectives add tsk.strMax dummy
scoreboard objectives add tsk.critRate dummy
scoreboard objectives add tsk.critDamage dummy
scoreboard objectives add tsk.critHitCount dummy
scoreboard objectives add tsk.critDamage.stat dummy
scoreboard objectives add tsk.critDamagePercentage dummy

## LEVELLING
scoreboard objectives add tsk.level dummy
scoreboard objectives add tsk.levelXp dummy
scoreboard objectives add tsk.levelXpRequired dummy
scoreboard objectives add tsk.worldLevel dummy
scoreboard players set $level tsk.worldLevel 1

scoreboard objectives add tsk.mobLevel dummy

# COMBAT
scoreboard objectives add tsk.hitCount dummy
scoreboard objectives add tsk.combatTimer dummy
scoreboard objectives add tsk.dashReady dummy
scoreboard objectives add tsk.jumpReady dummy

# ELEMENTAL REACTIONS
## TIMER
scoreboard objectives add tsk.elementTimer.air dummy
scoreboard objectives add tsk.elementTimer.earth dummy
scoreboard objectives add tsk.elementTimer.fire dummy
scoreboard objectives add tsk.elementTimer.ice dummy
scoreboard objectives add tsk.elementTimer.water dummy

scoreboard objectives add tsk.reactionTimer.blizzard dummy
scoreboard objectives add tsk.reactionTimer.dust_storm dummy
scoreboard objectives add tsk.reactionTimer.storm dummy
scoreboard objectives add tsk.reactionTimer.wildfire dummy
scoreboard objectives add tsk.reactionTimer.freeze dummy
scoreboard objectives add tsk.reactionTimer.permafrost dummy
scoreboard objectives add tsk.reactionTimer.magma_flow dummy
scoreboard objectives add tsk.reactionTimer.melt dummy
scoreboard objectives add tsk.reactionTimer.quicksand dummy
scoreboard objectives add tsk.reactionTimer.scalding_mist dummy

## IS ACTIVE
scoreboard objectives add tsk.elementIsActive.air dummy
scoreboard objectives add tsk.elementIsActive.earth dummy
scoreboard objectives add tsk.elementIsActive.fire dummy
scoreboard objectives add tsk.elementIsActive.ice dummy
scoreboard objectives add tsk.elementIsActive.water dummy

# VARIABLES
## INTEGERS
scoreboard objectives add tsk.int dummy
scoreboard players set $1 tsk.int 1
scoreboard players set $2 tsk.int 2
scoreboard players set $4 tsk.int 4
scoreboard players set $10 tsk.int 10
scoreboard players set $20 tsk.int 20
scoreboard players set $50 tsk.int 50
scoreboard players set $100 tsk.int 100
scoreboard players set $120 tsk.int 120
scoreboard players set $1000 tsk.int 1000
scoreboard players set $10000 tsk.int 10000
scoreboard players set $100000 tsk.int 100000

# CALCULATION STUFF
## TIER SCALING VALUE
scoreboard objectives add tsk.tierScalingValue dummy
scoreboard players set $tier1 tsk.tierScalingValue 148
scoreboard players set $tier2 tsk.tierScalingValue 222
scoreboard players set $tier3 tsk.tierScalingValue 334
scoreboard players set $tier4 tsk.tierScalingValue 500
scoreboard players set $tier5 tsk.tierScalingValue 601
scoreboard players set $tier6 tsk.tierScalingValue 1001
scoreboard players set $tier7 tsk.tierScalingValue 1501

## TIER BASE HP
scoreboard objectives add tsk.tierBaseHp dummy
scoreboard players set $tier1 tsk.tierBaseHp 7
scoreboard players set $tier2 tsk.tierBaseHp 17
scoreboard players set $tier3 tsk.tierBaseHp 27
scoreboard players set $tier4 tsk.tierBaseHp 43
scoreboard players set $tier5 tsk.tierBaseHp 55
scoreboard players set $tier6 tsk.tierBaseHp 56
scoreboard players set $tier7 tsk.tierBaseHp 90

### PERCENTAGES
scoreboard objectives add tsk.percentageValue dummy
scoreboard objectives add tsk.getPercentageOf dummy


## DAMAGE DEALT
scoreboard objectives add tsk.preCalDamageTaken minecraft.custom:minecraft.damage_resisted
scoreboard objectives add tsk.damageTaken dummy

scoreboard objectives add tsk.preCalDamageDealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add tsk.damageDealt dummy

## STORAGE
scoreboard objectives add tsk.randomVal dummy
scoreboard objectives add tsk.calcNewHp dummy
scoreboard objectives add tsk.calcNewPlayerHp dummy
scoreboard objectives add tsk.tempHp dummy
scoreboard objectives add tsk.tempStr dummy
scoreboard objectives add tsk.tempCritDmg dummy
scoreboard objectives add tsk.hpBackup dummy
scoreboard objectives add tsk.strBackup dummy
scoreboard objectives add tsk.defBackup dummy


# TIMERS
scoreboard objectives add tsk.secondsClock dummy
scoreboard objectives add tsk.indicatorTimer dummy
scoreboard objectives add tsk.soundsTimer dummy
scoreboard objectives add tsk.digestionTimer dummy
scoreboard objectives add tsk.bleedingTimer dummy
scoreboard objectives add tsk.manaRegenTimer dummy
scoreboard objectives add tsk.abilityCooldownTimer dummy
scoreboard objectives add tsk.animationPlayingTimer dummy
scoreboard objectives add tsk.oathscriptCooldown dummy

## MISC
scoreboard objectives add tsk.jumpCount minecraft.custom:minecraft.jump
scoreboard objectives add tsk.leftGame minecraft.custom:minecraft.leave_game
scoreboard objectives add tsk.animationFrames dummy
scoreboard objectives add tsk.bool dummy

## STAFF STUFF
scoreboard objectives add tsk.clickCount dummy
scoreboard objectives add tsk.leftClick dummy
scoreboard objectives add tsk.rightClick dummy

scoreboard objectives add tsk.leftClickTimer dummy
scoreboard objectives add tsk.rightClickTimer dummy

## RAYCASTING 
scoreboard objectives add tsk.raySteps dummy
scoreboard objectives add tsk.raySuccess dummy
scoreboard objectives add tsk.castTemp dummy

## CURRENCY
scoreboard objectives add tsk.gold dummy
scoreboard objectives add tsk.silver dummy

## RELICS
scoreboard objectives add tsk.relicBuff.charm.def dummy
scoreboard objectives add tsk.relicBuff.charm.maxHp dummy
scoreboard objectives add tsk.relicBuff.charm.sc dummy
scoreboard objectives add tsk.relicBuff.charm.critRate dummy
scoreboard objectives add tsk.relicBuff.amulet.manaRegen dummy
scoreboard objectives add tsk.relicBuff.amulet.maxMana dummy
scoreboard objectives add tsk.relicBuff.talisman.def dummy
scoreboard objectives add tsk.relicBuff.talisman.maxHp dummy
scoreboard objectives add tsk.relicBuff.talisman.str dummy
scoreboard objectives add tsk.relicBuff.talisman.critRate dummy
scoreboard objectives add tsk.relicBuff.tassel.def dummy
scoreboard objectives add tsk.relicBuff.tassel.critDmg dummy
scoreboard objectives add tsk.relicBuff.tassel.str dummy
scoreboard objectives add tsk.relicBuff.tassel.critRate dummy
scoreboard objectives add tsk.relicBuff.necklace.maxHp dummy
scoreboard objectives add tsk.relicBuff.necklace.sc dummy
scoreboard objectives add tsk.relicBuff.necklace.manaRegen dummy
scoreboard objectives add tsk.relicBuff.necklace.maxMana dummy


scoreboard objectives add tsk.relicBuff.substat1.amulet.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat1.amulet.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat1.amulet.def dummy
scoreboard objectives add tsk.relicBuff.substat1.amulet.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat1.amulet.sc dummy
scoreboard objectives add tsk.relicBuff.substat1.amulet.critRate dummy
scoreboard objectives add tsk.relicBuff.substat1.amulet.str dummy
scoreboard objectives add tsk.relicBuff.substat1.amulet.critDmg dummy
scoreboard objectives add tsk.relicBuff.substat1.charm.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat1.charm.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat1.charm.def dummy
scoreboard objectives add tsk.relicBuff.substat1.charm.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat1.charm.sc dummy
scoreboard objectives add tsk.relicBuff.substat1.charm.critRate dummy
scoreboard objectives add tsk.relicBuff.substat1.charm.str dummy
scoreboard objectives add tsk.relicBuff.substat1.charm.critDmg dummy
scoreboard objectives add tsk.relicBuff.substat1.necklace.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat1.necklace.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat1.necklace.def dummy
scoreboard objectives add tsk.relicBuff.substat1.necklace.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat1.necklace.sc dummy
scoreboard objectives add tsk.relicBuff.substat1.necklace.critRate dummy
scoreboard objectives add tsk.relicBuff.substat1.necklace.str dummy
scoreboard objectives add tsk.relicBuff.substat1.necklace.critDmg dummy
scoreboard objectives add tsk.relicBuff.substat1.talisman.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat1.talisman.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat1.talisman.def dummy
scoreboard objectives add tsk.relicBuff.substat1.talisman.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat1.talisman.sc dummy
scoreboard objectives add tsk.relicBuff.substat1.talisman.critRate dummy
scoreboard objectives add tsk.relicBuff.substat1.talisman.str dummy
scoreboard objectives add tsk.relicBuff.substat1.talisman.critDmg dummy
scoreboard objectives add tsk.relicBuff.substat1.tassel.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat1.tassel.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat1.tassel.def dummy
scoreboard objectives add tsk.relicBuff.substat1.tassel.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat1.tassel.sc dummy
scoreboard objectives add tsk.relicBuff.substat1.tassel.critRate dummy
scoreboard objectives add tsk.relicBuff.substat1.tassel.str dummy
scoreboard objectives add tsk.relicBuff.substat1.tassel.critDmg dummy

scoreboard objectives add tsk.relicBuff.substat2.amulet.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat2.amulet.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat2.amulet.def dummy
scoreboard objectives add tsk.relicBuff.substat2.amulet.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat2.amulet.sc dummy
scoreboard objectives add tsk.relicBuff.substat2.amulet.critRate dummy
scoreboard objectives add tsk.relicBuff.substat2.amulet.str dummy
scoreboard objectives add tsk.relicBuff.substat2.amulet.critDmg dummy
scoreboard objectives add tsk.relicBuff.substat2.charm.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat2.charm.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat2.charm.def dummy
scoreboard objectives add tsk.relicBuff.substat2.charm.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat2.charm.sc dummy
scoreboard objectives add tsk.relicBuff.substat2.charm.critRate dummy
scoreboard objectives add tsk.relicBuff.substat2.charm.str dummy
scoreboard objectives add tsk.relicBuff.substat2.charm.critDmg dummy
scoreboard objectives add tsk.relicBuff.substat2.necklace.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat2.necklace.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat2.necklace.def dummy
scoreboard objectives add tsk.relicBuff.substat2.necklace.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat2.necklace.sc dummy
scoreboard objectives add tsk.relicBuff.substat2.necklace.critRate dummy
scoreboard objectives add tsk.relicBuff.substat2.necklace.str dummy
scoreboard objectives add tsk.relicBuff.substat2.necklace.critDmg dummy
scoreboard objectives add tsk.relicBuff.substat2.talisman.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat2.talisman.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat2.talisman.def dummy
scoreboard objectives add tsk.relicBuff.substat2.talisman.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat2.talisman.sc dummy
scoreboard objectives add tsk.relicBuff.substat2.talisman.critRate dummy
scoreboard objectives add tsk.relicBuff.substat2.talisman.str dummy
scoreboard objectives add tsk.relicBuff.substat2.talisman.critDmg dummy
scoreboard objectives add tsk.relicBuff.substat2.tassel.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat2.tassel.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat2.tassel.def dummy
scoreboard objectives add tsk.relicBuff.substat2.tassel.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat2.tassel.sc dummy
scoreboard objectives add tsk.relicBuff.substat2.tassel.critRate dummy
scoreboard objectives add tsk.relicBuff.substat2.tassel.str dummy
scoreboard objectives add tsk.relicBuff.substat2.tassel.critDmg dummy

scoreboard objectives add tsk.relicBuff.substat3.amulet.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat3.amulet.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat3.amulet.def dummy
scoreboard objectives add tsk.relicBuff.substat3.amulet.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat3.amulet.sc dummy
scoreboard objectives add tsk.relicBuff.substat3.amulet.critRate dummy
scoreboard objectives add tsk.relicBuff.substat3.amulet.str dummy
scoreboard objectives add tsk.relicBuff.substat3.amulet.critDmg dummy
scoreboard objectives add tsk.relicBuff.substat3.charm.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat3.charm.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat3.charm.def dummy
scoreboard objectives add tsk.relicBuff.substat3.charm.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat3.charm.sc dummy
scoreboard objectives add tsk.relicBuff.substat3.charm.critRate dummy
scoreboard objectives add tsk.relicBuff.substat3.charm.str dummy
scoreboard objectives add tsk.relicBuff.substat3.charm.critDmg dummy
scoreboard objectives add tsk.relicBuff.substat3.necklace.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat3.necklace.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat3.necklace.def dummy
scoreboard objectives add tsk.relicBuff.substat3.necklace.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat3.necklace.sc dummy
scoreboard objectives add tsk.relicBuff.substat3.necklace.critRate dummy
scoreboard objectives add tsk.relicBuff.substat3.necklace.str dummy
scoreboard objectives add tsk.relicBuff.substat3.necklace.critDmg dummy
scoreboard objectives add tsk.relicBuff.substat3.talisman.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat3.talisman.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat3.talisman.def dummy
scoreboard objectives add tsk.relicBuff.substat3.talisman.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat3.talisman.sc dummy
scoreboard objectives add tsk.relicBuff.substat3.talisman.critRate dummy
scoreboard objectives add tsk.relicBuff.substat3.talisman.str dummy
scoreboard objectives add tsk.relicBuff.substat3.talisman.critDmg dummy
scoreboard objectives add tsk.relicBuff.substat3.tassel.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat3.tassel.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat3.tassel.def dummy
scoreboard objectives add tsk.relicBuff.substat3.tassel.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat3.tassel.sc dummy
scoreboard objectives add tsk.relicBuff.substat3.tassel.critRate dummy
scoreboard objectives add tsk.relicBuff.substat3.tassel.str dummy
scoreboard objectives add tsk.relicBuff.substat3.tassel.critDmg dummy


scoreboard objectives add tsk.relicBuff.substat4.amulet.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat4.amulet.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat4.amulet.def dummy
scoreboard objectives add tsk.relicBuff.substat4.amulet.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat4.amulet.sc dummy
scoreboard objectives add tsk.relicBuff.substat4.amulet.critRate dummy
scoreboard objectives add tsk.relicBuff.substat4.amulet.str dummy
scoreboard objectives add tsk.relicBuff.substat4.amulet.critDmg dummy
scoreboard objectives add tsk.relicBuff.substat4.charm.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat4.charm.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat4.charm.def dummy
scoreboard objectives add tsk.relicBuff.substat4.charm.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat4.charm.sc dummy
scoreboard objectives add tsk.relicBuff.substat4.charm.critRate dummy
scoreboard objectives add tsk.relicBuff.substat4.charm.str dummy
scoreboard objectives add tsk.relicBuff.substat4.charm.critDmg dummy
scoreboard objectives add tsk.relicBuff.substat4.necklace.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat4.necklace.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat4.necklace.def dummy
scoreboard objectives add tsk.relicBuff.substat4.necklace.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat4.necklace.sc dummy
scoreboard objectives add tsk.relicBuff.substat4.necklace.critRate dummy
scoreboard objectives add tsk.relicBuff.substat4.necklace.str dummy
scoreboard objectives add tsk.relicBuff.substat4.necklace.critDmg dummy
scoreboard objectives add tsk.relicBuff.substat4.talisman.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat4.talisman.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat4.talisman.def dummy
scoreboard objectives add tsk.relicBuff.substat4.talisman.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat4.talisman.sc dummy
scoreboard objectives add tsk.relicBuff.substat4.talisman.critRate dummy
scoreboard objectives add tsk.relicBuff.substat4.talisman.str dummy
scoreboard objectives add tsk.relicBuff.substat4.talisman.critDmg dummy
scoreboard objectives add tsk.relicBuff.substat4.tassel.manaRegen dummy
scoreboard objectives add tsk.relicBuff.substat4.tassel.maxMana dummy
scoreboard objectives add tsk.relicBuff.substat4.tassel.def dummy
scoreboard objectives add tsk.relicBuff.substat4.tassel.maxHp dummy
scoreboard objectives add tsk.relicBuff.substat4.tassel.sc dummy
scoreboard objectives add tsk.relicBuff.substat4.tassel.critRate dummy
scoreboard objectives add tsk.relicBuff.substat4.tassel.str dummy
scoreboard objectives add tsk.relicBuff.substat4.tassel.critDmg dummy

scoreboard objectives add tsk.relic.upgradeTotal dummy
scoreboard objectives add tsk.relic.xpTotal dummy
scoreboard objectives add tsk.relic.xpNeeded dummy
scoreboard objectives add tsk.relic.level dummy

scoreboard objectives add tsk.relicTemp dummy
scoreboard objectives add tsk.relicTemp.sub1 dummy
scoreboard objectives add tsk.relicTemp.sub2 dummy
scoreboard objectives add tsk.relicTemp.sub3 dummy
scoreboard objectives add tsk.relicTemp.sub4 dummy

## ABILITY TIMERS
scoreboard objectives add tsk.abilityTimer.tranquilTide dummy

## MATH 
scoreboard objectives add tsk.math dummy