	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08051610
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r5, r0, r1
	ldrb r1, [r5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	bl sub_080521A4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08051614
	ldrb r0, [r5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	b _0805166A
	.align 2, 0
_08051610: .4byte gUnknown_020050C0
_08051614:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08052184
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08051F80
	adds r0, r4, #0
	movs r1, #1
	bl sub_08052184
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08051F80
	movs r0, #0
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	movs r2, #1
	movs r3, #1
	bl sub_08051C74
	movs r0, #1
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	movs r2, #1
	movs r3, #1
	bl sub_08051C74
	ldrb r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5]
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_0805166A:
	mov r0, sp
	ldrh r0, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
