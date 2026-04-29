	.syntax unified
sub_0800CCA8:
	push {r4, r5, r6, lr}
	sub sp, #0x14
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r0, _0800CCEC
	ldr r1, _0800CCF0
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0800CCF4
	movs r0, #0
	bl get_obj_direct
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	mov r3, sp
	adds r3, #0xe
	str r3, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	adds r3, #4
	str r3, [sp, #8]
	add r3, sp, #0xc
	bl sub_0800F99C
	b _0800CD04
	.align 2, 0
_0800CCEC: .4byte gGame
_0800CCF0: .4byte 0x000067B8
_0800CCF4:
	movs r1, #0
	add r0, sp, #0xc
	strh r1, [r0]
	strh r1, [r0, #2]
	add r0, sp, #0x10
	strh r4, [r0]
	strh r5, [r0, #2]
	adds r4, r0, #0
_0800CD04:
	movs r1, #0
	ldrsh r0, [r4, r1]
	add r1, sp, #0x10
	movs r2, #2
	ldrsh r1, [r1, r2]
	bl sub_0800F454
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800CD36
	movs r0, #1
	bl sub_0803788C
	bl sub_08037A0C
	ldr r0, _0800CD58
	ldr r1, _0800CD5C
	adds r2, r0, r1
	ldrb r1, [r2]
	lsls r0, r1, #0x1d
	cmp r0, #0
	blt _0800CD36
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
_0800CD36:
	movs r2, #0
	ldrsh r0, [r4, r2]
	add r5, sp, #0x10
	movs r2, #2
	ldrsh r1, [r5, r2]
	bl sub_0800F5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	beq _0800CDC2
	cmp r0, #1
	bgt _0800CD60
	cmp r0, #0
	beq _0800CD66
	b _0800CDC2
	.align 2, 0
_0800CD58: .4byte gSomeBlend
_0800CD5C: .4byte 0x000121B9
_0800CD60:
	cmp r0, #2
	beq _0800CDA0
	b _0800CDC2
_0800CD66:
	ldr r0, _0800CD90
	ldr r1, _0800CD94
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _0800CD78
	movs r0, #5
	bl musicPlayerStop_sfx
_0800CD78:
	movs r0, #1
	bl sub_08004660
	ldr r0, _0800CD98
	ldr r2, _0800CD9C
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	b _0800CDC2
	.align 2, 0
_0800CD90: .4byte gGame
_0800CD94: .4byte 0x0000829B
_0800CD98: .4byte gSomeBlend
_0800CD9C: .4byte 0x0001ED10
_0800CDA0:
	ldr r1, _0800CDCC
	add r0, sp, #0xc
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r6, r0
	strh r0, [r1]
	add r0, sp, #0xc
	movs r2, #2
	ldrsh r0, [r0, r2]
	muls r0, r6, r0
	strh r0, [r1, #2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	bl walkObjectTowardPosition
_0800CDC2:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800CDCC: .4byte gUnknown_0200C3A4
	.syntax divided
