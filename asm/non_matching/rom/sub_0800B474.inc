	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl get_obj_direct
	adds r1, r0, #0
	ldrh r2, [r4, #2]
	movs r0, #0xf0
	ands r0, r2
	cmp r0, #0
	beq _0800B4A4
	ldr r0, _0800B49C
	ldr r1, _0800B4A0
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bl sub_08033C44
	b _0800B4FC
	.align 2, 0
_0800B49C: .4byte gGame
_0800B4A0: .4byte 0x0000829B
_0800B4A4:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0800B4C6
	adds r0, r1, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r0, #0
	movs r1, #3
	bl sub_080332AC
	movs r0, #1
	bl sub_08033DA8
	b _0800B4FC
_0800B4C6:
	movs r0, #0
_0800B4C8:
	adds r4, r0, #1
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800B4F4
	ldr r0, [r1, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0800B4F4
	adds r0, r1, #0
	adds r0, #0xca
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
_0800B4F4:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _0800B4C8
_0800B4FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
