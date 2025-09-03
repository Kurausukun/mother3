	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r0, #5
	bl sub_08039B24
	movs r5, #1
	rsbs r5, r5, #0
	movs r4, #7
	str r4, [sp]
	movs r1, #3
	movs r2, #0
	adds r3, r5, #0
	bl sub_08039A18
	ldr r6, _0803B4F8
	ldrb r1, [r6, #8]
	movs r0, #0x20
	ands r0, r1
	movs r1, #0x11
	cmp r0, #0
	bne _0803B4A0
	movs r1, #0x12
_0803B4A0:
	adds r0, r1, #0
	bl sub_08039B24
	str r4, [sp]
	movs r1, #9
	movs r2, #0
	adds r3, r5, #0
	bl sub_08039A18
	movs r0, #6
	bl sub_08039B24
	str r4, [sp]
	movs r1, #3
	movs r2, #1
	adds r3, r5, #0
	bl sub_08039A18
	ldrb r0, [r6, #3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	adds r0, #0x17
	bl sub_08039B24
	str r4, [sp]
	movs r1, #9
	movs r2, #1
	adds r3, r5, #0
	bl sub_08039A18
	movs r0, #7
	bl sub_08039B24
	str r4, [sp]
	movs r1, #3
	movs r2, #2
	adds r3, r5, #0
	bl sub_08039A18
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B4F8: .4byte gGame
	.syntax divided
