	.syntax unified
sub_08011F74:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r2, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08012018
	adds r1, r2, #0
	bl sub_0800289C
	mov sl, r0
	ldr r4, _0801201C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r5, r0, #0
	ldr r1, _08012020
	adds r0, r4, r1
	ldrh r0, [r0]
	mov sb, r0
	ldr r2, _08012024
	adds r4, r4, r2
	ldrh r4, [r4]
	str r4, [sp]
	movs r1, #0
_08011FB8:
	movs r4, #0
	ldr r2, [sp]
	adds r0, r2, r1
	movs r2, #0x40
	adds r2, r2, r5
	mov r8, r2
	adds r7, r1, #1
	lsls r6, r0, #0x10
_08011FC8:
	mov r0, sb
	adds r1, r0, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sl
	lsrs r2, r6, #0x10
	bl sub_0801B314
	lsls r2, r4, #1
	adds r2, r2, r5
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r1, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1c
	adds r1, #0xc
	lsls r1, r1, #4
	ldrb r3, [r2, #1]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1e
	bls _08011FC8
	mov r5, r8
	lsls r0, r7, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x14
	bls _08011FB8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012018: .4byte gUnknown_09B18308
_0801201C: .4byte gUnknown_02016078
_08012020: .4byte 0x0000361C
_08012024: .4byte 0x0000361E
	.syntax divided
