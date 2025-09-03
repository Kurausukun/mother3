	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _080062FC
	b _0800648C
_080062FC:
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08006308
	bl sub_08007E2C
_08006308:
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08006316
	ldrh r0, [r4, #4]
	bl sub_08010808
_08006316:
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08006338
	ldr r1, _08006494
	ldr r0, _08006498
	adds r2, r1, r0
	ldr r0, _0800649C
	str r0, [r2]
	ldr r0, _080064A0
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1]
	bl sub_08030180
	bl sub_080306C4
_08006338:
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08006344
	bl sub_080306C4
_08006344:
	ldrb r0, [r4]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08006350
	bl sub_0800809C
_08006350:
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800635C
	bl sub_08007F64
_0800635C:
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08006368
	bl sub_08007FC8
_08006368:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08006374
	bl sub_080080BC
_08006374:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08006382
	ldrb r0, [r4, #0xb]
	bl sub_080080DC
_08006382:
	ldrb r1, [r4, #1]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08006390
	bl sub_08008110
_08006390:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0800639C
	bl sub_08008244
_0800639C:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _080063AA
	ldrb r0, [r4, #0xe]
	bl sub_080082DC
_080063AA:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080063B8
	ldrh r0, [r4, #6]
	bl sub_08011EC0
_080063B8:
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080063C8
	bl sub_080064A8
	bl sub_08005C14
_080063C8:
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080063D8
	bl sub_080066B4
	bl sub_08005C14
_080063D8:
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _080063E6
	ldr r0, _080064A4
	bl sub_0800677C
_080063E6:
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _080063F4
	ldr r0, _080064A4
	bl sub_080067B4
_080063F4:
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08006404
	bl sub_080067DC
	bl sub_08005C14
_08006404:
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08006410
	bl sub_08006850
_08006410:
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800641C
	bl sub_08006868
_0800641C:
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08006428
	bl sub_0800687C
_08006428:
	ldrb r0, [r4, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08006434
	bl sub_080068B8
_08006434:
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08006440
	bl nullsub_4
_08006440:
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800644E
	ldrb r0, [r4, #0xd]
	bl nullsub_5
_0800644E:
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800645A
	bl sub_08005A3C
_0800645A:
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08006468
	ldrb r0, [r4, #0xc]
	bl sub_08005A94
_08006468:
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08006474
	bl sub_08005B34
_08006474:
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08006488
	ldr r2, _08006494
	ldrb r1, [r2, #2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #2]
_08006488:
	movs r0, #0
	str r0, [r4]
_0800648C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006494: .4byte gGame
_08006498: .4byte 0x00009D08
_0800649C: .4byte 0x06010000
_080064A0: .4byte 0x00009D0C
_080064A4: .4byte gUnknown_02019550
	.syntax divided
