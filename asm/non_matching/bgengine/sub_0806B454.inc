	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	adds r5, r3, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0806B472
	adds r0, #7
_0806B472:
	asrs r0, r0, #3
	mov sb, r0
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0806B480
	adds r0, #7
_0806B480:
	asrs r0, r0, #3
	mov sl, r0
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r0, r4, #0
	movs r1, #8
	bl __modsi3
	cmp r0, #0
	bne _0806B498
	adds r0, r4, #0
	b _0806B49C
_0806B498:
	adds r0, r4, #0
	adds r0, #8
_0806B49C:
	movs r1, #8
	bl __divsi3
	lsls r0, r0, #3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806B4AE
	adds r0, #7
_0806B4AE:
	asrs r0, r0, #3
	str r0, [sp, #8]
	movs r1, #2
	ldrsh r4, [r5, r1]
	adds r0, r4, #0
	movs r1, #8
	bl __modsi3
	cmp r0, #0
	bne _0806B4C6
	adds r0, r4, #0
	b _0806B4CA
_0806B4C6:
	adds r0, r4, #0
	adds r0, #8
_0806B4CA:
	movs r1, #8
	bl __divsi3
	lsls r0, r0, #3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806B4DC
	adds r0, #7
_0806B4DC:
	asrs r7, r0, #3
	mov r1, r8
	adds r1, #0x2c
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r0, #4
	adds r2, r1, r0
	movs r6, #0x2c
	ldrsh r0, [r2, r6]
	cmp r0, #0
	bge _0806B4F6
	adds r0, #7
_0806B4F6:
	asrs r5, r0, #3
	mov r0, sl
	muls r0, r5, r0
	add sb, r0
	mov r0, sb
	lsls r1, r0, #1
	ldr r0, [r2, #0xc]
	adds r1, r0, r1
	mov r2, sl
	adds r0, r2, r7
	cmp r2, r0
	bge _0806B54C
	ldr r0, [sp, #0x30]
	ldrh r0, [r0]
	mov r8, r0
	ldr r3, _0806B560
	ldr r6, [sp, #8]
	lsls r6, r6, #1
	mov ip, r6
	mov r0, sp
	str r0, [sp, #0xc]
	movs r4, #0x81
	lsls r4, r4, #0x18
	ldr r6, [sp, #8]
	orrs r4, r6
	lsls r5, r5, #1
_0806B52A:
	mov r0, ip
	cmp r0, #0
	ble _0806B540
	mov r0, r8
	ldr r6, [sp, #0xc]
	strh r0, [r6]
	mov r6, sp
	str r6, [r3]
	str r1, [r3, #4]
	str r4, [r3, #8]
	ldr r0, [r3, #8]
_0806B540:
	adds r1, r1, r5
	adds r2, #1
	mov r6, sl
	adds r0, r6, r7
	cmp r2, r0
	blt _0806B52A
_0806B54C:
	mov r0, sb
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806B560: .4byte 0x040000D4
	.syntax divided
