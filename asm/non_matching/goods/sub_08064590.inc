	.syntax unified
init__13StatusFactory:
	push {r4, lr}
	movs r4, #0
_08064594:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0806473C
	bl put__13StatusFactoryUsP4Unit_Pv
	adds r4, #1
	cmp r4, #0x3f
	bls _08064594
	ldr r1, _08064740
	movs r0, #1
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064744
	movs r0, #9
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064748
	movs r0, #0x16
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _0806474C
	movs r0, #0x17
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064750
	movs r0, #0x18
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064754
	movs r0, #0x19
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064758
	movs r0, #0x1a
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _0806475C
	movs r0, #0x23
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064760
	movs r0, #0x30
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064764
	movs r0, #0x26
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064768
	movs r0, #2
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _0806476C
	movs r0, #3
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064770
	movs r0, #6
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064774
	movs r0, #7
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064778
	movs r0, #0xa
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _0806477C
	movs r0, #0xe
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064780
	movs r0, #0xf
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064784
	movs r0, #0x20
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064788
	movs r0, #0xc
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _0806478C
	movs r0, #0x27
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064790
	movs r0, #0xd
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064794
	movs r0, #0x33
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064798
	movs r0, #5
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _0806479C
	movs r0, #8
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647A0
	movs r0, #0x10
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647A4
	movs r0, #0x12
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647A8
	movs r0, #0x21
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647AC
	movs r0, #0x13
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647B0
	movs r0, #0x14
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647B4
	movs r0, #0x22
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647B8
	movs r0, #0x15
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647BC
	movs r0, #0x1b
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647C0
	movs r0, #0x31
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647C4
	movs r0, #0x1c
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647C8
	movs r0, #0x1d
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647CC
	movs r0, #0x32
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647D0
	movs r0, #0x1e
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647D4
	movs r0, #0x24
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647D8
	movs r0, #0x25
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647DC
	movs r0, #0x28
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647E0
	movs r0, #0x29
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647E4
	movs r0, #0x2a
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647E8
	movs r0, #0x2b
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647EC
	movs r0, #0x2c
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647F0
	movs r0, #0x2d
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647F4
	movs r0, #0x2e
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647F8
	movs r0, #0x2f
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _080647FC
	movs r0, #4
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064800
	movs r0, #0xb
	bl put__13StatusFactoryUsP4Unit_Pv
	ldr r1, _08064804
	movs r0, #0x11
	bl put__13StatusFactoryUsP4Unit_Pv
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806473C: .4byte create__20DefaultStatusFactoryUsP4Unit
_08064740: .4byte create__19StatusPoisonFactoryUsP4Unit
_08064744: .4byte create__19StatusOnFireFactoryUsP4Unit
_08064748: .4byte create__19StatusShieldFactoryUsP4Unit
_0806474C: .4byte create__20StatusCounterFactoryUsP4Unit
_08064750: .4byte create__25StatusElectrocutedFactoryUsP4Unit
_08064754: .4byte create__22StatusPsiShieldFactoryUsP4Unit
_08064758: .4byte create__23StatusPsiCounterFactoryUsP4Unit
_0806475C: .4byte create__21StatusTimeBombFactory
_08064760: .4byte create__19StatusEndureFactoryUsP4Unit
_08064764: .4byte create__20StatusRefreshFactoryUsP4Unit
_08064768: .4byte create__17StatusNumbFactoryUsP4Unit
_0806476C: .4byte create__18StatusSleepFactoryUsP4Unit
_08064770: .4byte create__22StatusForgetfulFactoryUsP4Unit
_08064774: .4byte create__21StatusNauseousFactoryUsP4Unit
_08064778: .4byte create__19StatusFrozenFactoryUsP4Unit
_0806477C: .4byte create__23StatusApologeticFactoryUsP4Unit
_08064780: .4byte create__21StatusLaughingFactoryUsP4Unit
_08064784: .4byte create__18StatusDanceFactoryUsP4Unit
_08064788: .4byte create__17StatusDCMCFactoryUsP4Unit
_0806478C: .4byte create__17StatusFellFactoryUsP4Unit
_08064790: .4byte create__20StatusStapledFactoryUsP4Unit
_08064794: .4byte create__25StatusNoBackSpriteFactoryUsP4Unit
_08064798: .4byte create__19StatusCryingFactoryUsP4Unit
_0806479C: .4byte create__18StatusFleasFactoryUsP4Unit
_080647A0: .4byte create__19StatusDefendFactoryUsP4Unit
_080647A4: .4byte create__24StatusOffDownWeakFactoryUsP4Unit
_080647A8: .4byte create__23StatusOffDownMidFactoryUsP4Unit
_080647AC: .4byte create__26StatusOffDownStrongFactoryUsP4Unit
_080647B0: .4byte create__24StatusDefDownWeakFactoryUsP4Unit
_080647B4: .4byte create__23StatusDefDownMidFactoryUsP4Unit
_080647B8: .4byte create__26StatusDefDownStrongFactoryUsP4Unit
_080647BC: .4byte create__22StatusOffUpWeakFactoryUsP4Unit
_080647C0: .4byte create__21StatusOffUpMidFactoryUsP4Unit
_080647C4: .4byte create__24StatusOffUpStrongFactoryUsP4Unit
_080647C8: .4byte create__22StatusDefUpWeakFactoryUsP4Unit
_080647CC: .4byte create__21StatusDefUpMidFactoryUsP4Unit
_080647D0: .4byte create__24StatusDefUpStrongFactoryUsP4Unit
_080647D4: .4byte create__21StatusParamsUpFactoryUsP4Unit
_080647D8: .4byte create__23StatusParamsDownFactoryUsP4Unit
_080647DC: .4byte create__27StatusMonkeyDanceOffFactoryUsP4Unit
_080647E0: .4byte create__27StatusMonkeyDanceDefFactoryUsP4Unit
_080647E4: .4byte create__26StatusMonkeyDanceSPFactoryUsP4Unit
_080647E8: .4byte create__26StatusMonkeyDanceIQFactoryUsP4Unit
_080647EC: .4byte create__28StatusMonkeyDanceOff2FactoryUsP4Unit
_080647F0: .4byte create__28StatusMonkeyDanceDef2FactoryUsP4Unit
_080647F4: .4byte create__27StatusMonkeyDanceSP2FactoryUsP4Unit
_080647F8: .4byte create__27StatusMonkeyDanceIQ2FactoryUsP4Unit
_080647FC: .4byte create__20StatusStrangeFactoryUsP4Unit
_08064800: .4byte create__19StatusSmellyFactoryUsP4Unit
_08064804: .4byte create__18StatusNoExpFactoryUsP4Unit
	.syntax divided
