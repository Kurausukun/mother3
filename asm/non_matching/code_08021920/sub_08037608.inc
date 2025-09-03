	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _080376C8
	adds r3, r4, r0
	ldrb r1, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r3]
	movs r1, #0x88
	lsls r1, r1, #4
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	ldr r5, _080376CC
	adds r1, r4, r5
	movs r0, #2
	strb r0, [r1]
	ldr r6, _080376D0
	adds r0, r4, r6
	strb r2, [r0]
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
	movs r7, #0x86
	lsls r7, r7, #4
	adds r0, r4, r7
	bl sub_080376EC
	movs r2, #0
	ldr r3, _080376D4
_08037662:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r0, r4
	adds r0, r0, r3
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _08037662
	ldr r0, _080376D8
	ldrb r0, [r0]
	cmp r0, #4
	bne _080376C0
	ldr r1, _080376DC
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _080376C0
	movs r2, #0
	strb r2, [r1, #3]
	ldr r1, _080376E0
	ldrb r0, [r1]
	cmp r0, #3
	bgt _080376C0
	cmp r0, #0
	blt _080376C0
	ldr r0, _080376E4
	strb r2, [r0]
	ldrb r1, [r1]
	ldr r2, _080376E8
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _080376BA
	cmp r1, #1
	bls _080376BA
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_080376BA:
	adds r0, r1, #0
	bl sub_08037794
_080376C0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080376C8: .4byte 0x0000090A
_080376CC: .4byte 0x00000881
_080376D0: .4byte 0x00000883
_080376D4: .4byte gUnknown_080C2050
_080376D8: .4byte gUnknown_02005080
_080376DC: .4byte gUnknown_020051E8
_080376E0: .4byte gUnknown_02004100
_080376E4: .4byte gGame
_080376E8: .4byte 0x000082B8
	.syntax divided
