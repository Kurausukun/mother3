	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	bl __4Base
	ldr r0, _0806ECFC
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0x30
	bl sub_0805D2A4
	movs r0, #0
	strh r0, [r6, #0x20]
	strh r0, [r6, #0x28]
	bl sub_0806B040
	adds r4, r0, #0
	mov r1, sp
	movs r5, #0x80
	lsls r5, r5, #1
	mov r0, sp
	strh r5, [r0]
	strh r5, [r1, #2]
	adds r0, r4, #0
	movs r1, #2
	mov r2, sp
	bl sub_0806B2CC
	adds r0, r4, #0
	movs r1, #2
	adds r2, r5, #0
	bl sub_0806B698
	adds r0, r4, #0
	movs r1, #2
	movs r2, #2
	bl sub_0806B850
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_0806BA74
	adds r0, r4, #0
	movs r1, #2
	movs r2, #6
	bl sub_0806BACC
	add r2, sp, #4
	strh r5, [r2]
	strh r5, [r2, #2]
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806B2CC
	adds r0, r4, #0
	movs r1, #3
	adds r2, r5, #0
	bl sub_0806B698
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_0806B850
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	bl sub_0806BA74
	adds r0, r4, #0
	movs r1, #3
	movs r2, #6
	bl sub_0806BACC
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806ECFC: .4byte vt_09F800B0
	.syntax divided
