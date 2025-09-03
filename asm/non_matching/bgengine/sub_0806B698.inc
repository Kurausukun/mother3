	.syntax unified
sub_0806B698:
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r1, r4, #0
	adds r1, #0x2c
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	strh r2, [r1, #0x14]
	movs r2, #0
	movs r3, #0
	ldr r0, [r4, #0x2c]
	cmp r3, r0
	bge _0806B6E2
	ldr r6, _0806B728
	adds r1, r4, #0
	adds r1, #0x40
_0806B6C2:
	adds r0, r2, #0
	cmp r2, #0
	bge _0806B6CA
	adds r0, r2, r6
_0806B6CA:
	asrs r0, r0, #9
	strh r0, [r1]
	lsls r0, r0, #9
	subs r0, r2, r0
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	adds r2, r2, r0
	adds r1, #0x38
	adds r3, #1
	ldr r0, [r4, #0x2c]
	cmp r3, r0
	blt _0806B6C2
_0806B6E2:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_0806B828
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806B814
	lsls r3, r0, #5
	cmp r3, #0
	ble _0806B714
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0806B72C
	str r1, [r2]
	str r6, [r2, #4]
	asrs r0, r3, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806B714:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r4, r0
	ldrh r0, [r0, #0x3c]
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806B728: .4byte 0x000001FF
_0806B72C: .4byte 0x040000D4
	.syntax divided
