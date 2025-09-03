	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	ldr r0, _0803EC50
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _0803EC54
	adds r0, r5, #0
	adds r3, r7, #0
	bl sub_0803EC80
	b _0803EC74
	.align 2, 0
_0803EC50: .4byte gUnknown_02004100
_0803EC54:
	movs r4, #0
	cmp r4, r7
	bhs _0803EC74
_0803EC5A:
	adds r0, r5, #0
	adds r1, r6, #0
	mov r3, r8
	lsls r2, r3, #1
	bl sub_08001A14
	adds r5, #0x40
	adds r6, #0x40
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r7
	blo _0803EC5A
_0803EC74:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
