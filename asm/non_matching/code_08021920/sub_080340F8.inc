	.syntax unified
	push {r4, r5, lr}
	ldr r0, _08034150
	ldr r1, _08034154
	adds r0, r0, r1
	movs r1, #0xa
	strh r1, [r0]
	movs r4, #0
	movs r0, #7
	rsbs r0, r0, #0
	adds r5, r0, #0
_0803410C:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08034126
	adds r1, #0xc8
	ldrb r0, [r1]
	ands r0, r5
	strb r0, [r1]
_08034126:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0803410C
	movs r0, #0
	bl get_obj_direct
	adds r1, r0, #0
	ldr r0, [r1, #0x18]
	ldrb r1, [r0, #1]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0803414A
	movs r0, #0
	bl sub_08035170
_0803414A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034150: .4byte gGame
_08034154: .4byte 0x000082A4
	.syntax divided
