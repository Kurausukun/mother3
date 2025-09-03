	.syntax unified
sub_0804B790:
	push {r4, r5, lr}
	sub sp, #8
	ldr r4, _0804B7B8
	adds r5, r4, #0
	adds r5, #0x74
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_080512B8
	add r0, sp, #4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x44
	ble _0804B7BC
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_08050F2C
	b _0804B7C6
	.align 2, 0
_0804B7B8: .4byte gUnknown_0201A55C
_0804B7BC:
	adds r0, r4, #0
	movs r1, #3
	movs r2, #6
	bl sub_08050F2C
_0804B7C6:
	add r0, sp, #4
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x44
	cmp r0, #0
	bge _0804B7D4
	rsbs r0, r0, #0
_0804B7D4:
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0x44
	movs r3, #0x36
	bl sub_08051254
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_08050F2C
	adds r0, r5, #0
	movs r1, #1
	movs r2, #1
	movs r3, #8
	bl sub_080511F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
