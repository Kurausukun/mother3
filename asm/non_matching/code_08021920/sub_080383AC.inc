	.syntax unified
	push {r4, lr}
	bl sub_08038BDC
	ldr r4, _080383FC
	ldr r1, _08038400
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080383CA
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080383F6
_080383CA:
	ldr r3, _08038404
	adds r1, r4, r3
	ldrb r0, [r1]
	cmp r0, #3
	bhi _080383EE
	ldr r0, _08038408
	ldrb r1, [r1]
	lsls r2, r1, #2
	adds r2, r2, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r3, _0803840C
	adds r1, r4, r3
	adds r0, r0, r1
	ldr r1, [r2]
	bl _call_via_r1
_080383EE:
	ldr r1, _08038410
	adds r0, r4, r1
	bl sub_080393D8
_080383F6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080383FC: .4byte gSomeBlend
_08038400: .4byte 0x000035BA
_08038404: .4byte 0x00003530
_08038408: .4byte gUnknown_08D2E14C
_0803840C: .4byte 0x00002CB0
_08038410: .4byte 0x00003510
	.syntax divided
