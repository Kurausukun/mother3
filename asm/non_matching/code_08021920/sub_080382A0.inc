	.syntax unified
	push {r4, r5, lr}
	ldr r4, _080382D8
	ldr r0, _080382DC
	adds r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #1
	beq _080382D2
	cmp r0, #0
	bne _080382BE
	ldr r1, _080382E0
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_080382BE:
	ldr r0, _080382E4
	bl sub_0800A3EC
	ldr r1, _080382E8
	adds r0, r4, r1
	movs r1, #0
	bl sub_08009E38
	movs r0, #1
	strb r0, [r5]
_080382D2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080382D8: .4byte gSomeBlend
_080382DC: .4byte 0x00003531
_080382E0: .4byte 0x000121BA
_080382E4: .4byte gUnknown_080C1FF8
_080382E8: .4byte 0x00005778
	.syntax divided
