	.syntax unified
sub_0803C54C:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5]
	cmp r0, #1
	bne _0803C5AC
	ldr r4, _0803C5B4
	ldr r0, _0803C5B8
	adds r1, r4, r0
	ldr r0, [r5, #4]
	str r0, [r1]
	adds r5, #0x18
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	bl sub_08001B18
	adds r5, #0x10
	adds r4, #8
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #4
	bl sub_08001B18
	adds r5, #0x10
	adds r0, r5, #0
	bl sub_0803C5C0
	movs r0, #0xe6
	lsls r0, r0, #2
	adds r5, r5, r0
	adds r0, r5, #0
	bl sub_0803C9AC
	movs r0, #0xfa
	lsls r0, r0, #2
	adds r5, r5, r0
	adds r0, r5, #0
	bl sub_0803CB68
	adds r5, #0xc8
	adds r0, r5, #0
	bl sub_0803CBC4
	ldr r0, _0803C5BC
	adds r5, r5, r0
	adds r0, r5, #0
	bl sub_0803D058
_0803C5AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C5B4: .4byte gGame
_0803C5B8: .4byte 0x00009D10
_0803C5BC: .4byte 0x000006D6
	.syntax divided
