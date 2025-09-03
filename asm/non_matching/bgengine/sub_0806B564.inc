	.syntax unified
sub_0806B564:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r5, r3, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0806B586
	adds r0, #7
_0806B586:
	asrs r0, r0, #3
	str r0, [sp]
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0806B594
	adds r0, #7
_0806B594:
	asrs r7, r0, #3
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r0, r4, #0
	movs r1, #8
	bl __modsi3
	cmp r0, #0
	bne _0806B5AA
	adds r0, r4, #0
	b _0806B5AE
_0806B5AA:
	adds r0, r4, #0
	adds r0, #8
_0806B5AE:
	movs r1, #8
	bl __divsi3
	lsls r0, r0, #3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806B5C0
	adds r0, #7
_0806B5C0:
	asrs r0, r0, #3
	mov sl, r0
	movs r1, #2
	ldrsh r4, [r5, r1]
	adds r0, r4, #0
	movs r1, #8
	bl __modsi3
	cmp r0, #0
	bne _0806B5D8
	adds r0, r4, #0
	b _0806B5DC
_0806B5D8:
	adds r0, r4, #0
	adds r0, #8
_0806B5DC:
	movs r1, #8
	bl __divsi3
	lsls r0, r0, #3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806B5EE
	adds r0, #7
_0806B5EE:
	asrs r3, r0, #3
	mov r1, sb
	adds r1, #0x2c
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r0, #4
	adds r2, r1, r0
	movs r1, #0x2c
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0806B608
	adds r0, #7
_0806B608:
	asrs r6, r0, #3
	adds r0, r7, #0
	muls r0, r6, r0
	ldr r1, [sp]
	adds r0, r0, r1
	mov sb, r0
	lsls r1, r0, #1
	ldr r0, [r2, #0xc]
	adds r1, r0, r1
	adds r2, r7, #0
	adds r3, r3, r2
	mov ip, r3
	cmp r2, ip
	bge _0806B654
	mov r0, sl
	lsls r5, r0, #1
	ldr r3, _0806B668
	asrs r4, r5, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r4, r0
	ldr r0, [sp, #0x28]
	lsls r7, r0, #1
	lsls r6, r6, #1
	mov r0, ip
	subs r2, r0, r2
_0806B63C:
	cmp r5, #0
	ble _0806B64A
	mov r0, r8
	str r0, [r3]
	str r1, [r3, #4]
	str r4, [r3, #8]
	ldr r0, [r3, #8]
_0806B64A:
	add r8, r7
	adds r1, r1, r6
	subs r2, #1
	cmp r2, #0
	bne _0806B63C
_0806B654:
	mov r0, sb
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806B668: .4byte 0x040000D4
	.syntax divided
