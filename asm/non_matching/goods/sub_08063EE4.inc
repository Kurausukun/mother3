	.syntax unified
init__19MonsterSkillFactory:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	movs r4, #0
	ldr r5, _080642D4
_08063EEE:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080642D8
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	adds r4, #1
	cmp r4, r5
	bls _08063EEE
	ldr r1, _080642DC
	movs r0, #0xf0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x99
	lsls r0, r0, #1
	ldr r1, _080642E0
	mov r8, r1
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x96
	mov r1, r8
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r5, _080642E4
	movs r0, #0x78
	adds r1, r5, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _080642E8
	movs r0, #0x7b
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _080642EC
	ldr r1, _080642F0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _080642F4
	ldr r4, _080642F8
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xd9
	lsls r0, r0, #1
	adds r1, r5, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _080642FC
	ldr r1, _08064300
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x99
	lsls r0, r0, #2
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r4, _08064304
	movs r0, #0x79
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xb8
	lsls r0, r0, #1
	ldr r1, _08064308
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x8a
	lsls r0, r0, #1
	ldr r1, _0806430C
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064310
	ldr r1, _08064314
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064318
	ldr r1, _0806431C
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xce
	lsls r0, r0, #1
	ldr r6, _08064320
	adds r1, r6, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x57
	mov r1, r8
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xd3
	lsls r0, r0, #1
	ldr r1, _08064324
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xeb
	lsls r0, r0, #1
	mov r1, r8
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064328
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r5, _0806432C
	movs r0, #3
	adds r1, r5, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xb1
	lsls r0, r0, #1
	adds r1, r5, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r5, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064330
	ldr r1, _08064334
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064338
	ldr r1, _0806433C
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064340
	adds r1, r5, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064344
	ldr r1, _08064348
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xaf
	lsls r0, r0, #1
	ldr r1, _0806434C
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064350
	ldr r4, _08064354
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064358
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _0806435C
	ldr r1, _08064360
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r5, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064364
	ldr r1, _08064368
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _0806436C
	adds r1, r6, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064370
	adds r1, r6, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064374
	adds r1, r6, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x81
	lsls r0, r0, #2
	adds r1, r6, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064378
	adds r1, r6, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _0806437C
	ldr r4, _08064380
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064384
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xf7
	lsls r0, r0, #1
	ldr r4, _08064388
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _0806438C
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _08064390
	movs r0, #0x7c
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r4, _08064394
	movs r0, #0x62
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x63
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x64
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x65
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064398
	ldr r4, _0806439C
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _080643A0
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xdd
	lsls r0, r0, #1
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _080643A4
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xde
	lsls r0, r0, #1
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _080643A8
	ldr r1, _080643AC
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x91
	lsls r0, r0, #1
	ldr r1, _080643B0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _080643B4
	movs r0, #0x69
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _080643B8
	mov r8, r0
	movs r0, #0xae
	mov r1, r8
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _080643BC
	movs r0, #0x66
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xaf
	mov r1, r8
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _080643C0
	ldr r6, _080643C4
	adds r1, r6, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r1, r6, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r4, _080643C8
	movs r0, #0xb5
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xb6
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r5, _080643CC
	movs r0, #0xb9
	adds r1, r5, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xba
	adds r1, r5, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xfa
	lsls r0, r0, #1
	mov r1, r8
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _080643D0
	adds r1, r6, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _080643D4
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _080643D8
	mov r1, r8
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _080643DC
	adds r1, r5, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x9e
	lsls r0, r0, #2
	ldr r1, _080643E0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xd2
	lsls r0, r0, #1
	ldr r1, _080643E4
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _080643E8
	ldr r4, _080643EC
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xc7
	lsls r0, r0, #1
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x8c
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _080643F0
	movs r0, #0x50
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r1, _080643F4
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r4, _080643F8
	movs r0, #0x92
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _080643FC
	movs r0, #0x90
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x93
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _08064400
	movs r0, #1
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _08064404
	movs r0, #0xf1
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _08064408
	movs r0, #0xc3
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _0806440C
	ldr r5, _08064410
	adds r1, r5, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _08064414
	movs r0, #0x45
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064418
	ldr r1, _0806441C
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xa5
	lsls r0, r0, #1
	ldr r1, _08064420
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _08064424
	movs r0, #0xde
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xa2
	lsls r0, r0, #1
	ldr r1, _08064428
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _0806442C
	movs r0, #0xf2
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064430
	ldr r1, _08064434
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xab
	lsls r0, r0, #1
	ldr r1, _08064438
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _0806443C
	movs r0, #0x51
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064440
	ldr r1, _08064444
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _08064448
	movs r0, #0xc4
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _0806444C
	movs r0, #0xb7
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _08064450
	movs r0, #0xd2
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _08064454
	movs r0, #0x94
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064458
	ldr r1, _0806445C
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x8f
	lsls r0, r0, #1
	ldr r1, _08064460
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x95
	lsls r0, r0, #1
	ldr r1, _08064464
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064468
	ldr r1, _0806446C
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064470
	ldr r1, _08064474
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xb5
	lsls r0, r0, #1
	ldr r1, _08064478
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xb9
	lsls r0, r0, #1
	ldr r1, _0806447C
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _08064480
	movs r0, #0xe0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r1, _08064484
	movs r0, #0x43
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xe9
	lsls r0, r0, #1
	ldr r1, _08064488
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xb3
	lsls r0, r0, #1
	ldr r1, _0806448C
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064490
	b _08064494
	.align 2, 0
_080642D4: .4byte 0x00000289
_080642D8: .4byte create__26DefaultMonsterSkillFactoryUsP4Unit
_080642DC: .4byte create__18CallForHelpFactoryUsP4Unit
_080642E0: .4byte create__18ShootFlamesFactoryUsP4Unit
_080642E4: .4byte create__16BloodSuckFactoryUsP4Unit
_080642E8: .4byte create__26SpinSomethingAroundFactoryUsP4Unit
_080642EC: .4byte 0x00000141
_080642F0: .4byte create__25OhSoSnakeDiveWaterFactoryUsP4Unit
_080642F4: .4byte 0x00000153
_080642F8: .4byte create__25PorkTankFireCannonFactoryUsP4Unit
_080642FC: .4byte 0x00000101
_08064300: .4byte create__28MechaTurtleMachineGunFactoryUsP4Unit
_08064304: .4byte create__15HPSuckerFactoryUsP4Unit
_08064308: .4byte create__28MrGenetorDischargeZapFactoryUsP4Unit
_0806430C: .4byte create__19FishRoeManLeapMouthFactoryUsP4Unit
_08064310: .4byte 0x00000215
_08064314: .4byte create__26MasterEddyWhirlpoolFactoryUsP4Unit
_08064318: .4byte 0x0000022A
_0806431C: .4byte create__28PigmaskMajorThrowBombFactoryUsP4Unit
_08064320: .4byte create__21ExplosiveBlastFactoryUsP4Unit
_08064324: .4byte create__31NKCyborgEndOfCenturyBeamFactoryUsP4Unit
_08064328: .4byte 0x0000026B
_0806432C: .4byte create__25MonsterComboAttackFactoryUsP4Unit
_08064330: .4byte 0x00000139
_08064334: .4byte create__33LordPassionThrowEverythingFactoryUsP4Unit
_08064338: .4byte 0x00000147
_0806433C: .4byte create__23ClaymanCrashDownFactoryUsP4Unit
_08064340: .4byte 0x0000010F
_08064344: .4byte 0x0000015D
_08064348: .4byte create__29JealousBassJamSessionAFactoryUsP4Unit
_0806434C: .4byte create__29JealousBassJamSessionBFactoryUsP4Unit
_08064350: .4byte 0x000001DD
_08064354: .4byte create__28FiercePorkTrooperJumpFactoryUsP4Unit
_08064358: .4byte 0x000001E5
_0806435C: .4byte 0x00000125
_08064360: .4byte create__26RhinocerocketChargeFactoryUsP4Unit
_08064364: .4byte 0x00000117
_08064368: .4byte create__20MonsterAttackFactoryUsP4Unit
_0806436C: .4byte 0x0000019B
_08064370: .4byte 0x00000202
_08064374: .4byte 0x00000203
_08064378: .4byte 0x00000205
_0806437C: .4byte 0x00000279
_08064380: .4byte create__29MaskedManLightningBoltFactoryUsP4Unit
_08064384: .4byte 0x0000027A
_08064388: .4byte create__33NewFassadMusicalHornAttackFactoryUsP4Unit
_0806438C: .4byte 0x00000242
_08064390: .4byte create__24MonsterPsiMagnetAFactoryUsP4Unit
_08064394: .4byte create__24MonsterPkThunderAFactoryUsP4Unit
_08064398: .4byte 0x00000197
_0806439C: .4byte create__21MonsterPkLoveAFactoryUsP4Unit
_080643A0: .4byte 0x00000195
_080643A4: .4byte 0x000001BB
_080643A8: .4byte 0x000001BD
_080643AC: .4byte create__21MonsterPkLoveOFactoryUsP4Unit
_080643B0: .4byte create__21BatteryManJumpFactoryUsP4Unit
_080643B4: .4byte create__30CarpetMonsterYankCarpetFactoryUsP4Unit
_080643B8: .4byte create__21MonsterShieldAFactoryUsP4Unit
_080643BC: .4byte create__21MonsterPkFlashFactoryUsP4Unit
_080643C0: .4byte 0x0000018F
_080643C4: .4byte create__22MonsterCounterAFactoryUsP4Unit
_080643C8: .4byte create__24MonsterPsiShieldAFactoryUsP4Unit
_080643CC: .4byte create__25MonsterPsiCounterAFactoryUsP4Unit
_080643D0: .4byte 0x000001A5
_080643D4: .4byte 0x00000241
_080643D8: .4byte 0x00000235
_080643DC: .4byte 0x000001A9
_080643E0: .4byte create__24MonsterPkFlash2ndFactoryUsP4Unit
_080643E4: .4byte create__20PowerUpSystemFactoryUsP4Unit
_080643E8: .4byte 0x0000026E
_080643EC: .4byte create__17PorkyCoughFactoryUsP4Unit
_080643F0: .4byte create__27PigmaskMajorTimeBombFactoryUsP4Unit
_080643F4: .4byte create__22MonsterHealingAFactoryUsP4Unit
_080643F8: .4byte create__21PaleGreenLightFactoryUsP4Unit
_080643FC: .4byte create__19ShieldKillerFactoryUsP4Unit
_08064400: .4byte create__24MonsterTurnAroundFactoryUsP4Unit
_08064404: .4byte create__21MonsterSkillF1FactoryUsP4Unit
_08064408: .4byte create__21CallForHelp2ndFactoryUsP4Unit
_0806440C: .4byte 0x00000209
_08064410: .4byte create__28WalkingBushieGreetingFactoryUsP4Unit
_08064414: .4byte create__22DropFromCeilingFactoryUsP4Unit
_08064418: .4byte 0x00000103
_0806441C: .4byte create__24PseudoorShutDoorsFactoryUsP4Unit
_08064420: .4byte create__19MonsterGetUpFactoryUsP4Unit
_08064424: .4byte create__17SoundAlarmFactoryUsP4Unit
_08064428: .4byte create__22OhSoSnakeEmergeFactoryUsP4Unit
_0806442C: .4byte create__30SandLizardEatDungBeetleFactoryUsP4Unit
_08064430: .4byte 0x0000014D
_08064434: .4byte create__20GooeyGooSplitFactoryUsP4Unit
_08064438: .4byte create__22MonsterSkill156FactoryUsP4Unit
_0806443C: .4byte create__27SquawkingStickSqueakFactoryUsP4Unit
_08064440: .4byte 0x0000020E
_08064444: .4byte create__21CallForHelp3rdFactoryUsP4Unit
_08064448: .4byte create__23PigtuniaSowSeedsFactoryUsP4Unit
_0806444C: .4byte create__23MonsterPkFreezeGFactoryUsP4Unit
_08064450: .4byte create__26MonsterLookOtherWayFactoryUsP4Unit
_08064454: .4byte create__21MonsterSkill94FactoryUsP4Unit
_08064458: .4byte 0x0000011D
_0806445C: .4byte create__31MonsterSixteenBeatAttackFactoryUsP4Unit
_08064460: .4byte create__21MarchingAttackFactoryUsP4Unit
_08064464: .4byte create__21CallForHelp4thFactoryUsP4Unit
_08064468: .4byte 0x0000012B
_0806446C: .4byte create__21CallForHelp5thFactoryUsP4Unit
_08064470: .4byte 0x000001E7
_08064474: .4byte create__32FiercePorkTrooperAngerMaxFactoryUsP4Unit
_08064478: .4byte create__31MissMarshmallowTickedOffFactoryUsP4Unit
_0806447C: .4byte create__30MrGenetorFinishChargingFactoryUsP4Unit
_08064480: .4byte create__20SoundAlarm2ndFactoryUsP4Unit
_08064484: .4byte create__21ShortCircuitedFactoryUsP4Unit
_08064488: .4byte create__27PigmaskCaptainRunOffFactoryUsP4Unit
_0806448C: .4byte create__27MagmanEruptPyrefliesFactoryUsP4Unit
_08064490: .4byte 0x0000020D
_08064494:
	adds r1, r5, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xc4
	lsls r0, r0, #1
	ldr r1, _08064518
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _0806451C
	ldr r1, _08064520
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064524
	ldr r4, _08064528
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _0806452C
	adds r1, r4, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064530
	adds r1, r5, #0
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064534
	ldr r1, _08064538
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x83
	lsls r0, r0, #2
	ldr r1, _0806453C
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064540
	ldr r1, _08064544
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064548
	ldr r1, _0806454C
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _08064550
	ldr r1, _08064554
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	movs r0, #0x9b
	lsls r0, r0, #2
	ldr r1, _08064558
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	ldr r0, _0806455C
	ldr r1, _08064560
	bl put__19MonsterSkillFactoryUsP4Unit_Pv
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064518: .4byte create__25BarrierPoseCrushedFactoryUsP4Unit
_0806451C: .4byte 0x00000189
_08064520: .4byte create__26BarrierTrioDropPoseFactoryUsP4Unit
_08064524: .4byte 0x000001FB
_08064528: .4byte create__24StrikeBarrierPoseFactoryUsP4Unit
_0806452C: .4byte 0x000001FD
_08064530: .4byte 0x0000023B
_08064534: .4byte 0x0000010D
_08064538: .4byte create__23TLCTreeBabyBirdsFactoryUsP4Unit
_0806453C: .4byte create__24MechaStartBeepingFactoryUsP4Unit
_08064540: .4byte 0x00000237
_08064544: .4byte create__22MonsterSkill237FactoryUsP4Unit
_08064548: .4byte 0x00000243
_0806454C: .4byte create__29MiracleFassadEmitLightFactoryUsP4Unit
_08064550: .4byte 0x0000023A
_08064554: .4byte create__20SoundAlarm3rdFactoryUsP4Unit
_08064558: .4byte create__24FireflyBuzzAroundFactoryUsP4Unit
_0806455C: .4byte 0x0000026D
_08064560: .4byte create__21CallForHelp6thFactoryUsP4Unit
	.syntax divided
