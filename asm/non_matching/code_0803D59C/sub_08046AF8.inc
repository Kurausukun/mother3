	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [sp, #0x24]
	ldr r4, [sp, #0x28]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	adds r4, r6, #2
	movs r5, #0
	b _08046B8C
_08046B2C:
	movs r0, #1
	bl sub_08050E64
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r1
	movs r1, #0xff
	ands r2, r1
	ldrb r3, [r4, #1]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x16
	orrs r2, r1
	lsrs r3, r3, #6
	lsls r3, r3, #0xe
	orrs r2, r3
	strh r2, [r0]
	movs r1, #2
	ldrsb r1, [r4, r1]
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r1
	ldr r3, _08046BA4
	adds r1, r3, #0
	ands r2, r1
	ldrb r1, [r4, #3]
	lsrs r1, r1, #1
	lsls r1, r1, #9
	orrs r2, r1
	strh r2, [r0, #2]
	ldrh r1, [r4, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r2, [sp]
	adds r1, r2, r1
	mov r3, sb
	lsls r2, r3, #0xa
	orrs r1, r2
	mov r3, sl
	lsls r2, r3, #0xc
	orrs r1, r2
	strh r1, [r0, #4]
	adds r4, #6
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08046B8C:
	ldrh r0, [r6]
	cmp r5, r0
	blo _08046B2C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046BA4: .4byte 0x000001FF
	.syntax divided
