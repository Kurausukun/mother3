	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	adds r7, r6, #0
	adds r7, #0x2c
	mov r0, sb
	lsls r0, r0, #3
	mov r8, r0
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r7, r0
	ldr r0, [r2]
	str r0, [r1, #0x2c]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _0806B300
	adds r0, #7
_0806B300:
	asrs r3, r0, #3
	movs r4, #2
	ldrsh r0, [r2, r4]
	cmp r0, #0
	bge _0806B30C
	adds r0, #7
_0806B30C:
	asrs r0, r0, #3
	adds r5, r3, #0
	muls r5, r0, r5
	adds r4, r1, #4
	ldr r0, [r1, #4]
	mov sl, r7
	mov r1, r8
	str r1, [sp, #8]
	cmp r0, r5
	bge _0806B35E
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0806B32A
	adds r0, r1, #0
_0806B32A:
	mov r8, r0
	lsls r0, r0, #1
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r3, [r4, #8]
	adds r2, r7, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0806B34E
	adds r1, r0, #0
_0806B340:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0806B340
_0806B34E:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806B358
	bl __builtin_vec_delete
_0806B358:
	mov r2, r8
	str r2, [r4]
	str r7, [r4, #8]
_0806B35E:
	str r5, [r4, #4]
	movs r3, #0x20
	movs r2, #0
	ldr r0, [r6, #0x2c]
	cmp r2, r0
	bge _0806B388
	ldr r4, _0806B3D8
	mov r1, sl
	adds r1, #4
_0806B370:
	ldr r0, [r1, #8]
	cmp r0, #0
	bge _0806B378
	adds r0, r0, r4
_0806B378:
	asrs r0, r0, #0xa
	subs r3, r3, r0
	strh r3, [r1]
	adds r1, #0x38
	adds r2, #1
	ldr r0, [r6, #0x2c]
	cmp r2, r0
	blt _0806B370
_0806B388:
	adds r0, r6, #0
	mov r1, sb
	movs r2, #0
	bl sub_0806B680
	adds r4, r0, #0
	adds r0, r6, #0
	mov r1, sb
	bl sub_0806B66C
	lsls r3, r0, #1
	cmp r3, #0
	ble _0806B3BA
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0806B3DC
	str r1, [r2]
	str r4, [r2, #4]
	asrs r0, r3, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806B3BA:
	ldr r3, [sp, #8]
	mov r4, sb
	subs r0, r3, r4
	lsls r0, r0, #3
	adds r0, #4
	add r0, sl
	ldrh r0, [r0]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806B3D8: .4byte 0x000003FF
_0806B3DC: .4byte 0x040000D4
	.syntax divided
