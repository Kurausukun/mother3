	.syntax unified
sub_0800B358:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r1, _0800B3E4
	ldr r7, _0800B3E8
	ldr r2, _0800B3EC
	adds r0, r7, r2
	ldrb r6, [r0]
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	mov r0, sb
	ldrh r1, [r0, #2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0800B458
	adds r2, #5
	adds r1, r7, r2
	ldrh r0, [r1]
	cmp r0, r5
	blo _0800B3C6
	adds r1, r5, #0
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r8, r4
	cmp r4, r6
	bhs _0800B3C6
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	ldr r0, [r1, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0800B3C0
	ldr r1, _0800B3F0
	adds r0, r7, r1
	ldrb r2, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1c
	adds r0, r4, #0
	movs r1, #4
	bl sub_080332AC
_0800B3C0:
	mov r0, r8
	bl sub_08033484
_0800B3C6:
	ldr r2, _0800B3E8
	ldr r0, _0800B3F4
	adds r4, r2, r0
	ldrh r3, [r4]
	ldr r1, _0800B3EC
	adds r0, r2, r1
	ldrb r0, [r0]
	muls r0, r5, r0
	cmp r3, r0
	blt _0800B3FC
	ldr r0, _0800B3F8
	adds r1, r2, r0
	movs r0, #2
	strb r0, [r1]
	b _0800B462
	.align 2, 0
_0800B3E4: .4byte gUnknown_08D2D304
_0800B3E8: .4byte gGame
_0800B3EC: .4byte 0x00008299
_0800B3F0: .4byte 0x000082B6
_0800B3F4: .4byte 0x0000829E
_0800B3F8: .4byte 0x0000829B
_0800B3FC:
	mov r0, sb
	ldrh r1, [r0, #2]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _0800B41C
	ldr r0, _0800B418
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	bl sub_08033C44
	b _0800B462
	.align 2, 0
_0800B418: .4byte 0x0000829B
_0800B41C:
	adds r0, r3, #1
	strh r0, [r4]
	movs r0, #0
_0800B422:
	adds r4, r0, #1
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800B44E
	ldr r0, [r1, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0800B44E
	adds r0, r1, #0
	adds r0, #0xca
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
_0800B44E:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _0800B422
	b _0800B462
_0800B458:
	ldr r2, _0800B470
	adds r0, r7, r2
	strb r1, [r0]
	bl sub_08033C44
_0800B462:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B470: .4byte 0x0000829B
	.syntax divided
