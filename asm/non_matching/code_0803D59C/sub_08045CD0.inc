	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r4, _08045CF8
	ldr r0, _08045CFC
	adds r4, r4, r0
	ldrh r0, [r4]
	bl sub_080486A0
	adds r6, r0, #0
	movs r3, #0xc
	movs r5, #0x14
	ldrh r0, [r4]
	cmp r0, #0x20
	beq _08045D0A
	cmp r0, #0x20
	ble _08045D00
	cmp r0, #0x33
	beq _08045D0E
	b _08045D10
	.align 2, 0
_08045CF8: .4byte gSomeBlend
_08045CFC: .4byte 0x000041CC
_08045D00:
	cmp r0, #0x17
	bgt _08045D10
	cmp r0, #0x15
	blt _08045D10
	movs r3, #0x10
_08045D0A:
	movs r5, #0xc
	b _08045D10
_08045D0E:
	movs r3, #8
_08045D10:
	ldr r2, _08045D44
	ldr r1, _08045D48
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r1, r3, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08045D4C
	adds r2, r2, r0
	ldrh r2, [r2]
	adds r2, r5, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #1
	rsbs r3, r3, #0
	movs r0, #0xf
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_08047CDC
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045D44: .4byte gSomeBlend
_08045D48: .4byte 0x00004234
_08045D4C: .4byte 0x00004236
	.syntax divided
