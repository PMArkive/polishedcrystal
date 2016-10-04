RunActivationAbilitiesInner:
	ld a, BATTLE_VARS_ABILITY
	call GetBattleVar
	; do Trace first in case it traces an activation ability,
	; that way we can run one of the others after the trace.
	cp TRACE
	call z, TraceAbility
	; reload the ability byte if it changed
	ld a, BATTLE_VARS_ABILITY
	call GetBattleVar
	cp TRACE
	jr nz, .continue
	ret ; the trace failed, so don't continue
.continue
	; Do Imposter second to allow Transformed abilities to activate
	cp IMPOSTER
	jp z, ImposterAbility
	cp DRIZZLE
	jp z, DrizzleAbility
	cp DROUGHT
	jp z, DroughtAbility
	cp SAND_STREAM
	jp z, SandStreamAbility
	cp CLOUD_NINE
	jp z, CloudNineAbility
	cp INTIMIDATE
	jp z, IntimidateAbility
	cp PRESSURE ; just prints a message
	jr nz, .skip_pressure
	ld hl, NotifyPressure
	call StdBattleTextBox
.skip_pressure
	cp DOWNLOAD
	jp z, DownloadAbility
	cp MOLD_BREAKER ; just prints a message
	jr nz, .skip_mold_breaker
	ld hl, NotifyMoldBreaker
	call StdBattleTextBox
.skip_mold_breaker
	cp ANTICIPATION
	jp z, AnticipationAbility
	cp FOREWARN
	jp z, ForewarnAbility
	cp FRISK
	jp z, FriskAbility
	cp UNNERVE ; just prints a message
	jr nz, .skip_unnerve
	ld hl, NotifyUnnerve
	call StdBattleTextBox
.skip_unnerve
	jp RunStatusHealAbilities

RunEnemyStatusHealAbilities:
	farcall BattleCommand_SwitchTurn
	call RunStatusHealAbilities
	farcall BattleCommand_SwitchTurn
	ret

RunStatusHealAbilities:
; Procs abilities that protect against statuses.
	; Needed because this is called elsewhere.
	ld a, BATTLE_VARS_ABILITY
	call GetBattleVar
	cp LIMBER
	jp z, LimberAbility
	cp IMMUNITY
	jp z, ImmunityAbility
	cp MAGMA_ARMOR
	jp z, MagmaArmorAbility
	cp WATER_VEIL
	jp z, WaterVeilAbility
	cp INSOMNIA
	jp z, InsomniaAbility
	cp VITAL_SPIRIT
	jp z, VitalSpiritAbility
	cp OWN_TEMPO
	jp z, OwnTempoAbility
	cp OBLIVIOUS
	jp z, ObliviousAbility
	ret

ImmunityAbility:
	ld a, 1 << PSN
	jr HealStatusAbility
WaterVeilAbility:
	ld a, 1 << BRN
	jr HealStatusAbility
MagmaArmorAbility:
	ld a, 1 << FRZ
	jr HealStatusAbility
LimberAbility:
	ld a, 1 << PAR
	jr HealStatusAbility
InsomniaAbility:
VitalSpiritAbility:
	ld a, 1 << SLP
	jr HealStatusAbility
HealStatusAbility:
	ld b, a
	ld a, BATTLE_VARS_STATUS
	call GetBattleVar
	and b
	ret z ; not afflicted/wrong status
	call ShowAbilityActivation
	ld a, BATTLE_VARS_STATUS
	call GetBattleVarAddr
	xor a
	ld [hl], a
	ld hl, BecameHealthyText
	call StdBattleTextBox
	ld a, [hBattleTurn]
	and a
	jr z, .is_player
	farcall CalcEnemyStats
	ret
.is_player
	farcall CalcPlayerStats
	ret

OwnTempoAbility:
	ld a, BATTLE_VARS_SUBSTATUS3
	call GetBattleVar
	and SUBSTATUS_CONFUSED
	ret z ; not confused
	call ShowAbilityActivation
	ld a, BATTLE_VARS_SUBSTATUS3
	call GetBattleVarAddr
	res SUBSTATUS_CONFUSED, [hl]
	ld hl, ConfusedNoMoreText
	jp StdBattleTextBox

ObliviousAbility:
	ld a, BATTLE_VARS_SUBSTATUS1
	call GetBattleVar
	and SUBSTATUS_IN_LOVE
	ret z ; not infatuated
	call ShowAbilityActivation
	ld a, BATTLE_VARS_SUBSTATUS1
	call GetBattleVarAddr
	res SUBSTATUS_IN_LOVE, [hl]
	ld hl, ConfusedNoMoreText
	jp StdBattleTextBox

TraceAbility:
	ld a, BATTLE_VARS_ABILITY_OPP
	call GetBattleVar
	cp TRACE
	jr z, .trace_failure
	cp IMPOSTER
	jr z, .trace_failure
	push af
	ld a, BATTLE_VARS_ABILITY
	call GetBattleVarAddr
	pop af
	ld [hl], a
	ld hl, TraceActivationText
	call StdBattleTextBox
	; handle swift swim, etc.
	ld a, [hBattleTurn]
	jr z, .is_player
	farcall CalcEnemyStats
	ret
.is_player
	farcall CalcPlayerStats
	ret
.trace_failure
	ld hl, TraceFailureText
	call StdBattleTextBox
	ret

; Lasts 5 turns consistent with Generation VI.
DrizzleAbility:
	ld a, WEATHER_RAIN
	jr WeatherAbility
DroughtAbility:
	ld a, WEATHER_SUN
	jr WeatherAbility
SandStreamAbility:
	ld a, WEATHER_SANDSTORM
	jr WeatherAbility
CloudNineAbility:
	ld a, WEATHER_NONE
	jr WeatherAbility
WeatherAbility:
	ld b, a
	ld a, [Weather]
	cp b
	ret z ; don't re-activate it
	call ShowAbilityActivation
	ld a, 5
	ld [WeatherCount], a
	ld a, b
	ld [Weather], a
	; handle swift swim, etc.
	push bc
	farcall CalcPlayerStats
	farcall CalcEnemyStats
	pop bc
	ld a, b
	cp WEATHER_RAIN
	jr z, .handlerain
	cp WEATHER_SUN
	jr z, .handlesun
	cp WEATHER_SANDSTORM
	jr z, .handlesandstorm
	; we're dealing with cloud nine
	xor a
	ld [WeatherCount], a
	ld hl, BattleText_TheWeatherSubsided
	jp StdBattleTextBox
.handlerain
	ld de, RAIN_DANCE
	farcall Call_PlayBattleAnim
	ld hl, DownpourText
	jp StdBattleTextBox
.handlesun
	ld de, SUNNY_DAY
	farcall Call_PlayBattleAnim
	ld hl, SunGotBrightText
	jp StdBattleTextBox
.handlesandstorm
	ld de, SANDSTORM
	farcall Call_PlayBattleAnim
	ld hl, SandstormBrewedText
	jp StdBattleTextBox

IntimidateAbility:
	call ShowAbilityActivation
	call DisableAnimations
	farcall ResetMiss
	farcall BattleCommand_AttackDown
	farcall BattleCommand_StatDownMessage
	jp EnableAnimations

DownloadAbility:
; Increase Atk if enemy Def is lower than SpDef, otherwise SpAtk
	call ShowAbilityActivation
	call DisableAnimations
	ld hl, EnemyMonDefense
	ld a, [hBattleTurn]
	and a
	jr z, .ok
	ld hl, BattleMonDefense
.ok
	ld a, [hli]
	ld b, a
	ld a, [hl]
	ld c, a
	ld hl, EnemyMonSpclDef + 1
	ld a, [hBattleTurn]
	and a
	jr z, .ok2
	ld hl, BattleMonSpclDef + 1
.ok2
	ld a, [hld]
	ld e, a
	ld a, [hl]
	cp b
	jr c, .inc_spatk
	jr nz, .inc_atk
	; The high defense bits are equal, so compare the lower bits
	ld a, c
	cp e
	jr c, .inc_atk
.inc_spatk
	farcall ResetMiss
	farcall BattleCommand_SpecialAttackUp
	farcall BattleCommand_StatUpMessage
	jp EnableAnimations
.inc_atk
	farcall ResetMiss
	farcall BattleCommand_AttackUp
	farcall BattleCommand_StatUpMessage
	jp EnableAnimations

ImposterAbility:
	call ShowAbilityActivation
	call DisableAnimations
	farcall ResetMiss
	farcall BattleCommand_Transform
	ld de, TRANSFORM
	farcall Call_PlayBattleAnim
	jp EnableAnimations

AnticipationAbility:
ForewarnAbility:
FriskAbility:
	ret

RunEnemyOwnTempoAbility:
	farcall BattleCommand_SwitchTurn
	ld a, BATTLE_VARS_ABILITY
	call GetBattleVar
	cp OWN_TEMPO
	call z, SynchronizeAbility
	farcall BattleCommand_SwitchTurn
	ret

RunEnemySynchronizeAbility:
	farcall BattleCommand_SwitchTurn
	ld a, BATTLE_VARS_ABILITY
	call GetBattleVar
	cp SYNCHRONIZE
	call z, SynchronizeAbility
	farcall BattleCommand_SwitchTurn
	ret

SynchronizeAbility:
	ld a, BATTLE_VARS_STATUS
	call GetBattleVar
	and ALL_STATUS
	ret z ; not statused
	call ShowAbilityActivation
	farcall ResetMiss
	call DisableAnimations
	ld a, BATTLE_VARS_STATUS
	call GetBattleVar
	cp 1 << PSN
	jr z, .is_psn
	cp 1 << BRN
	jr z, .is_brn
	farcall BattleCommand_Paralyze
	jp EnableAnimations
.is_psn
	farcall BattleCommand_Poison
	jp EnableAnimations
.is_brn
	farcall BattleCommand_Burn
	jp EnableAnimations

RunContactAbilities:
; turn perspective is from the attacker
; 30% of the time, activate Poison Touch
	call BattleRandom
	cp 1 + 30 percent
	jr nc, .skip_user_ability
	ld a, BATTLE_VARS_ABILITY
	call GetBattleVar
	cp POISON_TOUCH
	call z, PoisonTouchAbility
.skip_user_ability
	call GetOpponentAbilityAfterMoldBreaker
	cp PICKPOCKET
	jr nz, .not_pickpocket
	farcall BattleCommand_SwitchTurn
	call PickPocketAbility
	farcall BattleCommand_SwitchTurn
	ret
.not_pickpocket
; other abilities only trigger 30% of the time
;
; Abilities always run from the ability user's perspective. This is
; consistent. Thus, a switchturn happens here. Feel free to rework
; the logic if you feel that this reduces readability.
	call BattleRandom
	cp 1 + 30 percent
	ret nc
	call GetOpponentAbilityAfterMoldBreaker
	ld b, a
	farcall BattleCommand_SwitchTurn
	call .do_enemy_abilities
	farcall BattleCommand_SwitchTurn
	ret
.do_enemy_abilities
	ld a, b
	cp CUTE_CHARM
	jp z, CuteCharmAbility
	cp EFFECT_SPORE
	jp z, EffectSporeAbility
	cp FLAME_BODY
	jp z, FlameBodyAbility
	cp POISON_POINT
	jp z, PoisonPointAbility
	cp STATIC
	jp z, StaticAbility
	ret

PickPocketAbility:
CuteCharmAbility:
	ret
EffectSporeAbility:
	call CheckIfTargetIsGrassType
	ret z
	ld a, BATTLE_VARS_ABILITY_OPP
	call GetBattleVar
	cp OVERCOAT
	ret z
	call BattleRandom
	cp 1 + 33 percent
	jr c, PoisonPointAbility
	cp 1 + 66 percent
	jr c, StaticAbility
	; there are 2 sleep resistance abilities, so check one here
	ld a, BATTLE_VARS_ABILITY_OPP
	call GetBattleVar
	cp VITAL_SPIRIT
	ret z
	ld b, INSOMNIA
	ld c, HELD_PREVENT_SLEEP
	ld d, SLP
	jr AfflictStatusAbility
FlameBodyAbility:
	call CheckIfTargetIsFireType
	ret z
	ld b, WATER_VEIL
	ld c, HELD_PREVENT_BURN
	ld d, BRN
	jr AfflictStatusAbility
PoisonTouchAbility:
	; Poison Touch is the same as an opposing Poison Point, and since
	; abilities always run from the ability user's POV...
PoisonPointAbility:
	call CheckIfTargetIsPoisonType
	ret z
	call CheckIfTargetIsSteelType
	ret z
	ld b, IMMUNITY
	ld c, HELD_PREVENT_POISON
	ld d, PSN
	jr AfflictStatusAbility
StaticAbility:
	call CheckIfTargetIsElectricType
	ret z
	ld b, LIMBER
	ld c, HELD_PREVENT_PARALYZE
	ld d, PAR
AfflictStatusAbility
; While BattleCommand_Whatever already does all these checks,
; duplicating them here is minor logic, and it avoids spamming
; needless ability activations that ends up not actually doing
; anything.
	ld a, BATTLE_VARS_ABILITY_OPP
	push de
	call GetBattleVar
	pop de
	cp b
	ret z
	push de
	farcall GetOpponentItem
	pop de
	ld a, b
	cp c
	ret z
	ld b, d
	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVar
	and a
	ret nz
	call ShowAbilityActivation
	call DisableAnimations
	ld a, b
	cp SLP
	jr z, .slp
	cp BRN
	jr z, .brn
	cp PSN
	jr z, .psn
	farcall BattleCommand_Paralyze
	jp EnableAnimations
.slp
	farcall BattleCommand_SleepTarget
	jp EnableAnimations
.brn
	farcall BattleCommand_Burn
	jp EnableAnimations
.psn
	farcall BattleCommand_Poison
	jp EnableAnimations

RunEnemyStatIncreaseAbilities:
	farcall BattleCommand_SwitchTurn
	ld a, BATTLE_VARS_ABILITY
	call GetBattleVar
	cp DEFIANT
	call z, DefiantAbility
	cp COMPETITIVE
	call z, CompetitiveAbility
	farcall BattleCommand_SwitchTurn
	ret

CompetitiveAbility:
	ld a, SP_ATTACK
	ld b, 1
	jr StatIncreaseAbility
DefiantAbility:
	ld a, ATTACK
	ld b, 1
	jr StatIncreaseAbility
LightningRodAbility:
	ld a, SP_ATTACK
	ld b, 0
	jr StatIncreaseAbility
MotorDriveAbility:
	ld a, SPEED
	ld b, 0
	jr StatIncreaseAbility
SapSipperAbility:
	ld a, ATTACK
	ld b, 0
StatIncreaseAbility:
	ld c, a
	call ShowAbilityActivation
	call DisableAnimations
	farcall ResetMiss
	ld a, c
	cp ATTACK
	jr z, .atk
	cp SP_ATTACK
	jr z, .sp_atk
	farcall BattleCommand_SpeedUp
	farcall BattleCommand_StatUpMessage
	jp EnableAnimations
.atk
	ld a, b
	cp 1
	jr z, .atk2
	farcall BattleCommand_AttackUp
	farcall BattleCommand_StatUpMessage
	jp EnableAnimations
.atk2
	farcall BattleCommand_AttackUp2
	farcall BattleCommand_StatUpMessage
	jp EnableAnimations
.sp_atk
	ld a, b
	cp 1
	jr z, .sp_atk2
	farcall BattleCommand_SpecialAttackUp
	farcall BattleCommand_StatUpMessage
	jp EnableAnimations
.sp_atk2
	farcall BattleCommand_SpecialAttackUp2
	farcall BattleCommand_StatUpMessage
	jp EnableAnimations

RunEnemyNullificationAbilities:
; At this point, we are already certain that the ability will activate, so no additional
; checks are required.
	farcall BattleCommand_SwitchTurn
	call .do_enemy_abilities
	farcall BattleCommand_SwitchTurn
	ret
.do_enemy_abilities
	ld a, BATTLE_VARS_ABILITY
	call GetBattleVar
	cp DRY_SKIN
	jp z, DrySkinAbility
	cp FLASH_FIRE
	jp z, FlashFireAbility
	cp LIGHTNING_ROD
	jp z, LightningRodAbility
	cp MOTOR_DRIVE
	jp z, MotorDriveAbility
	cp SAP_SIPPER
	jp z, SapSipperAbility
	cp VOLT_ABSORB
	jp z, VoltAbsorbAbility
	cp WATER_ABSORB
	jp z, WaterAbsorbAbility
	ret

FlashFireAbility:
	call ShowAbilityActivation
	ld a, BATTLE_VARS_SUBSTATUS3
	call GetBattleVarAddr
	ld a, [hl]
	and 1<<SUBSTATUS_FLASH_FIRE
	jr nz, .already_fired_up
	set SUBSTATUS_FLASH_FIRE, [hl]
	ld hl, FirePoweredUpText
	jp StdBattleTextBox
.already_fired_up
	ld hl, DoesntAffectText
	jp StdBattleTextBox


DrySkinAbility:
VoltAbsorbAbility:
WaterAbsorbAbility:
	call ShowAbilityActivation
	farcall CheckFullHP_b
	ld a, b
	and a
	jr z, .full_hp
	farcall GetQuarterMaxHP
	farcall BattleCommand_SwitchTurn
	farcall RestoreHP
	farcall BattleCommand_SwitchTurn
	ret
.full_hp
	ld hl, HPIsFullText
	jp StdBattleTextBox

HandleAbilities:
; Abilities handled at the end of the turn.
; This needs to be handled in a consistent order despite not involving faintings, because
; some abilities (like Moody) depends on randomness.
	ld a, [hLinkPlayerNumber]
	cp 1
	jr z, .enemy_first
	call SetPlayerTurn
	call .do_it
	call SetEnemyTurn
	jp .do_it

.enemy_first
	call SetEnemyTurn
	call .do_it
	call SetPlayerTurn

.do_it
	ld a, BATTLE_VARS_ABILITY
	call GetBattleVar
	cp HARVEST
	jr nz, .not_harvest
	; TODO: save used up items
	ret
.not_harvest
	cp MOODY
	jp nz, .not_moody

; Moody raises one stat by 2 stages and lowers another (not the same one!) by 1.
; It will not try to raise a stat at +6 (or lower one at -6). This means that, should all
; stats be +6, Moody will not raise any stat, and vice versa.

	call ShowAbilityActivation ; Safe -- Moody is certain to work for at least one part.
	call DisableAnimations

	; First, check how many stats aren't maxed out
	ld hl, PlayerStatLevels
	ld a, [hBattleTurn]
	and a
	jr z, .got_stat_levels
	ld hl, EnemyStatLevels
.got_stat_levels
	ld b, 0 ; bitfield of nonmaxed stats
	ld c, 0 ; bitfield of nonminimized stats
	ld d, 1 ; bit to OR into b/c
	ld e, 0 ; loop counter
.loop1
	ld a, [hl]
	cp 13
	jr z, .maxed
	ld a, b
	or d
	ld b, a
	ld a, [hl]
	cp 1
	jr z, .minimized
.maxed
	ld a, c
	or d
	ld c, a
.minimized
	inc hl
	inc e
	sla d
	ld a, e
	cp 7
	jr c, .loop1

	; If all stats are maxed (b=0), skip increasing stats
	ld a, b
	and a
	jr z, .all_stats_maxed

	; Randomize values until we get one matching a nonmaxed stat
.loop2
	call BattleRandom
	and $7
	cp 7
	jr z, .loop2 ; there are only 7 stats (0-6)
	ld d, 1
	ld e, 0 ; counter
.loop3
	cp e
	jr z, .loop3_done
	sla d
	inc e
	jr .loop3
.loop3_done
	ld a, b
	and d
	jr z, .loop2

	; We got the stat to raise. Set the e:th bit (using d) in c to 0
	; to avoid lowering the stat as well.
	ld a, d
	cpl
	and c
	ld c, a
	ld a, e
	or $10 ; raise it sharply
	ld b, a
	push bc
	farcall ResetMiss
	farcall BattleCommand_StatUp
	farcall BattleCommand_StatUpMessage
	pop bc

.all_stats_maxed
	ld a, c
	and a
	jp z, EnableAnimations ; no stat to lower

.loop4
	call BattleRandom
	and $7
	cp 7
	jr z, .loop4
	ld d, 1
	ld e, 0 ; counter
.loop5
	cp e
	jr z, .loop5_done
	sla d
	inc e
	jr .loop5
.loop5_done
	ld a, c
	and d
	jr z, .loop4

	ld b, e
	farcall ResetMiss
	farcall LowerStat
	farcall BattleCommand_SwitchTurn
	farcall BattleCommand_StatDownMessage
	farcall BattleCommand_SwitchTurn
	jp EnableAnimations
.not_moody
	cp PICKUP
	jr nz, .not_pickup
	; TODO: save used up items
	ret
.not_pickup
	cp SHED_SKIN
	jr nz, .not_shed_skin
	ret
.not_shed_skin
	cp SPEED_BOOST
	jp z, SpeedBoostAbility
	ret

SteadfastAbility:
SpeedBoostAbility:
	; avoid message if stat is maxed

	ld hl, PlayerSpdLevel
	ld a, [hBattleTurn]
	and a
	jr z, .got_speed
	ld hl, EnemySpdLevel
.got_speed
	ld a, [hl]
	cp 13
	ret z
	call ShowAbilityActivation
	call DisableAnimations
	farcall ResetMiss
	farcall BattleCommand_SpeedUp
	farcall BattleCommand_StatUpMessage
	jp EnableAnimations


DisableAnimations:
	ld a, 1
	ld [AnimationsDisabled], a
	ret
EnableAnimations:
	ld a, 0
	ld [AnimationsDisabled], a
	ret

ShowEnemyAbilityActivation::
	farcall BattleCommand_SwitchTurn
	call ShowAbilityActivation
	farcall BattleCommand_SwitchTurn
	ret
ShowAbilityActivation::
	push bc
	push de
	push hl
	ld a, BATTLE_VARS_ABILITY
	call GetBattleVar
	ld b, a
	farcall BufferAbility
	ld hl, BattleText_UsersStringBuffer1Activated
	call StdBattleTextBox
	pop hl
	pop de
	pop bc
	ret

RunOverworldPickupAbility::
; iterates the party and checks for potentially picking up items.
	ld a, [PartyMons]
	and a
	ret z ; no Pokémon in party?
.loop
	dec a
	ret c
	cp $ff
	ret z

	ld [CurPartyMon], a

	ld a, MON_ITEM
	call GetPartyParamLocation
	ld a, [hl]
	and a
	ld a, [CurPartyMon]
	jr nz, .loop

	push bc
	ld a, MON_DVS + 1
	call GetPartyParamLocation
	ld b, [hl]
	ld a, MON_SPECIES
	call GetPartyParamLocation
	ld c, [hl]
	farcall GetAbility
	ld a, b
	pop bc
	cp PICKUP
	ld a, [CurPartyMon]
	jr nz, .loop

	call Random
	cp 1 + (10 percent)
	ld a, [CurPartyMon]
	jr c, .loop

	call .Pickup
	ld a, [CurPartyMon]
	jr .loop

.Pickup:
	ld b, 0
	ld c, 0
; Pickup selects from a table, giving better rewards scaling with level and randomness
	call Random
	cp 1 + (2 percent)
	jr c, .RarePickup
	cp 1 + (6 percent)
	call c, .IncBC
	cp 1 + (10 percent)
	call c, .IncBC
	cp 1 + (20 percent)
	call c, .IncBC
	cp 1 + (30 percent)
	call c, .IncBC
	cp 1 + (40 percent)
	call c, .IncBC
	cp 1 + (50 percent)
	call c, .IncBC
	cp 1 + (60 percent)
	call c, .IncBC
	cp 1 + (70 percent)
	call c, .IncBC
	ld hl, BasePickupTable
.DoneRandomizing:
; Increase bc based on level
	push hl
	ld a, MON_LEVEL
	call GetPartyParamLocation
	ld a, [hl]
	dec a ; 1-10, 11-20, ..., not 0-9, 10-19, ...
.level_loop
	sub 10
	jr c, .level_loop_done
	inc bc
	jr .level_loop
.level_loop_done
	pop hl
	add hl, bc
	ld a, [hl]
	ld b, a
	ld a, MON_ITEM
	call GetPartyParamLocation
	ld a, b
	ld [hl], a
	ret

.RarePickup:
; 2% of Pickup results use a different table with generally better items.
	call Random
	cp 1 + 50 percent
	call c, .IncBC
	ld hl, RarePickupTable
	jr .DoneRandomizing

.IncBC:
; This just exists to avoid a million labels
	inc bc
	ret

BasePickupTable:
	db POTION
	db ANTIDOTE
	db SUPER_POTION
	db GREAT_BALL
	db REPEL
	db ESCAPE_ROPE
	db FULL_HEAL
	db HYPER_POTION
	db ULTRA_BALL
	db REVIVE
	db RARE_CANDY
	db SILVER_LEAF
	db GOLD_LEAF
	db FULL_RESTORE
	db MAX_REVIVE
	db PP_UP
	db MAX_ELIXER
	db EXP_SHARE

RarePickupTable:
	db HYPER_POTION
	db NUGGET
	db KINGS_ROCK
	db FULL_RESTORE
	db ETHER
	db LUCKY_EGG
	db MAX_ETHER
	db LUCKY_EGG
	db ELIXER
	db LUCKY_EGG
	db LEFTOVERS
