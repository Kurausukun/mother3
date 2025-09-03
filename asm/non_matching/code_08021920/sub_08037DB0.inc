	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, _08037DD0
	ldr r0, _08037DD4
	adds r3, r1, r0
	ldrb r2, [r3]
	movs r0, #0x10
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _08037DD8
	movs r0, #8
	orrs r0, r2
	strb r0, [r3]
	b _08037DEA
	.align 2, 0
_08037DD0: .4byte gSomeBlend
_08037DD4: .4byte 0x000035BA
_08037DD8:
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	movs r1, #9
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_08037DEA:
	adds r3, r5, #0
	ldr r6, _08037E28
	adds r2, r3, r6
	ldrb r0, [r2]
	cmp r0, #3
	bhi _08037E10
	ldr r1, _08037E2C
	lsls r2, r0, #2
	adds r2, r2, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r6, _08037E30
	adds r0, r3, r6
	adds r1, r1, r0
	ldr r2, [r2]
	adds r0, r4, #0
	bl _call_via_r2
_08037E10:
	ldr r0, _08037E34
	adds r1, r5, r0
	ldrb r2, [r1]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08037E38
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	b _08037E4C
	.align 2, 0
_08037E28: .4byte 0x00003530
_08037E2C: .4byte gUnknown_08D2E12C
_08037E30: .4byte 0x00002CB0
_08037E34: .4byte 0x000035BA
_08037E38:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08037E4C
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	bl sub_080394F0
_08037E4C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
