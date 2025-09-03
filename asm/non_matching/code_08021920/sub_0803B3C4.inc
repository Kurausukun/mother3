	.syntax unified
sub_0803B3C4:
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r0, #2
	bl sub_08039B24
	movs r5, #1
	rsbs r5, r5, #0
	movs r4, #7
	str r4, [sp]
	movs r1, #3
	movs r2, #0
	adds r3, r5, #0
	bl sub_08039A18
	ldr r0, _0803B468
	ldr r1, _0803B46C
	adds r0, r0, r1
	ldrh r0, [r0]
	str r4, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r1, #0xc
	movs r2, #0
	movs r3, #1
	bl sub_08039A74
	movs r0, #3
	bl sub_08039B24
	str r4, [sp]
	movs r1, #3
	movs r2, #1
	adds r3, r5, #0
	bl sub_08039A18
	ldr r6, _0803B470
	ldrb r1, [r6, #8]
	movs r0, #8
	ands r0, r1
	movs r1, #0x11
	cmp r0, #0
	bne _0803B41A
	movs r1, #0x12
_0803B41A:
	adds r0, r1, #0
	bl sub_08039B24
	str r4, [sp]
	movs r1, #9
	movs r2, #1
	adds r3, r5, #0
	bl sub_08039A18
	movs r0, #4
	bl sub_08039B24
	str r4, [sp]
	movs r1, #3
	movs r2, #2
	adds r3, r5, #0
	bl sub_08039A18
	ldrb r1, [r6, #8]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x15
	cmp r0, #0
	bne _0803B44C
	movs r1, #0x16
_0803B44C:
	adds r0, r1, #0
	bl sub_08039B24
	str r4, [sp]
	movs r1, #9
	movs r2, #2
	adds r3, r5, #0
	bl sub_08039A18
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B468: .4byte gSomeBlend
_0803B46C: .4byte 0x00003616
_0803B470: .4byte gGame
	.syntax divided
