	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	adds r4, r6, #2
	movs r5, #0
	ldrh r0, [r6]
	cmp r5, r0
	bhs _0805A288
_0805A228:
	ldr r0, _0805A298
	movs r1, #1
	bl sub_08000F04
	movs r3, #0
	ldrsb r3, [r4, r3]
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r3, r3, r1
	movs r1, #0xff
	ands r3, r1
	ldrb r1, [r4, #1]
	lsrs r1, r1, #6
	lsls r1, r1, #0xe
	orrs r3, r1
	movs r2, #2
	ldrsb r2, [r4, r2]
	mov r7, r8
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r2, r2, r1
	ldr r1, _0805A29C
	ands r2, r1
	lsls r2, r2, #0x10
	orrs r3, r2
	ldrb r1, [r4, #3]
	lsrs r1, r1, #1
	lsls r1, r1, #0x19
	orrs r3, r1
	str r3, [r0]
	ldrh r1, [r4, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r1, r1, r2
	mov r3, sb
	lsls r2, r3, #0xa
	orrs r1, r2
	strh r1, [r0, #4]
	adds r4, #6
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r7, [r6]
	cmp r5, r7
	blo _0805A228
_0805A288:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A298: .4byte gUnknown_02016078
_0805A29C: .4byte 0x000001FF
	.syntax divided
