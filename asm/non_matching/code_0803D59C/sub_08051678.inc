	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	ldr r6, _080516BC
	movs r0, #0x64
	mov sb, r0
	mov r0, sb
	muls r0, r4, r0
	adds r0, r0, r6
	adds r7, r0, #0
	adds r7, #0x29
	ldrb r5, [r7]
	ldr r0, _080516C0
	ldr r1, _080516C4
	adds r1, r1, r0
	mov r8, r1
	ldrb r0, [r1]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08051448
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080516C8
	movs r0, #0
	b _08051722
	.align 2, 0
_080516BC: .4byte gUnknown_020050C0
_080516C0: .4byte gSave
_080516C4: .4byte 0x0000081E
_080516C8:
	mov r1, sb
	mov r0, sl
	muls r0, r1, r0
	adds r0, r0, r6
	adds r0, #0x29
	strb r5, [r0]
	strb r5, [r7]
	mov r0, r8
	strb r5, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080520A0
	ldr r4, _08051734
	adds r4, #8
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	movs r1, #1
	bl sub_0803D06C
	mov r0, sl
	bl sub_080515DC
	mov r0, sp
	ldrb r1, [r0]
	mov r0, r8
	strb r1, [r0]
	ldr r0, _08051738
	adds r4, r4, r0
	lsls r2, r5, #5
	ldrb r1, [r4, #6]
	movs r0, #0x1f
	ands r0, r1
	orrs r0, r2
	movs r1, #7
	ands r1, r5
	lsls r1, r1, #2
	movs r2, #0x1d
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #6]
	movs r0, #1
_08051722:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08051734: .4byte gUnknown_02011D90
_08051738: .4byte 0xFFFFDB88
	.syntax divided
