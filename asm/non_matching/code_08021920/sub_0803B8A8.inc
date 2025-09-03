	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	strh r0, [r4]
	ldr r5, _0803B90C
	ldr r1, _0803B910
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [r4, #4]
	adds r4, #0x18
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	bl sub_08001B18
	adds r4, #0x10
	adds r5, #8
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #4
	bl sub_08001B18
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_0803B918
	movs r0, #0xe6
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_0803BD88
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r4, r4, r1
	adds r0, r4, #0
	bl sub_0803BF44
	adds r4, #0xc8
	adds r0, r4, #0
	bl sub_0803BFEC
	ldr r0, _0803B914
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_0803C4B0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803B90C: .4byte gGame
_0803B910: .4byte 0x00009D10
_0803B914: .4byte 0x000006D6
	.syntax divided
