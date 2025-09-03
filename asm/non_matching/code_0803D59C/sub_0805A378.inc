	.syntax unified
sub_0805A378:
	push {r4, r5, lr}
	ldr r4, _0805A3EC
	movs r0, #0
	strh r0, [r4]
	ldr r1, _0805A3F0
	ldrh r0, [r1]
	movs r3, #1
	orrs r0, r3
	strh r0, [r1]
	ldr r2, _0805A3F4
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	strh r3, [r4]
	ldr r1, _0805A3F8
	movs r0, #0x3f
	strh r0, [r1, #2]
	movs r0, #0x1e
	strh r0, [r1, #4]
	adds r4, r1, #0
	movs r5, #1
	rsbs r5, r5, #0
_0805A3A6:
	bl sub_08001960
	bl sub_0805A488
	ldrh r1, [r4, #4]
	ldrh r3, [r4, #2]
	ldr r0, _0805A3FC
	movs r2, #0x1e
	bl sub_08001778
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _0805A3A6
	ldr r3, _0805A3EC
	movs r0, #0
	strh r0, [r3]
	ldr r2, _0805A3F0
	ldrh r1, [r2]
	ldr r0, _0805A400
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0805A3F4
	ldrh r1, [r2]
	ldr r0, _0805A404
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A3EC: .4byte 0x04000208
_0805A3F0: .4byte 0x04000200
_0805A3F4: .4byte 0x04000004
_0805A3F8: .4byte gUnknown_02015DE0
_0805A3FC: .4byte gSomeBlend
_0805A400: .4byte 0x0000FFFC
_0805A404: .4byte 0x0000FFE7
	.syntax divided
