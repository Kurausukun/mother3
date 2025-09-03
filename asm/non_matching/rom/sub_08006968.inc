	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	ldr r0, _080069CC
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800698C
	ldr r0, _080069D0
	ldrh r0, [r0]
	cmp r0, #0
	beq _08006992
_0800698C:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
_08006992:
	movs r1, #0
	ldr r0, _080069D4
	mov sl, r0
_08006998:
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	adds r1, #1
	str r1, [sp, #4]
	adds r1, r4, #0
	adds r1, #0xd0
	str r1, [sp, #8]
	cmp r0, #0
	beq _08006A6C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	beq _08006A6C
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _080069D8
	adds r0, r4, #0
	bl sub_08006A88
	b _08006A6C
	.align 2, 0
_080069CC: .4byte gUnknown_02000000
_080069D0: .4byte gUnknown_02000004
_080069D4: .4byte 0x040000D4
_080069D8:
	adds r0, r4, #0
	adds r0, #0x88
	ldrh r0, [r0]
	str r3, [sp, #0xc]
	bl sub_08036D18
	ldrb r1, [r0]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, #1
	lsrs r1, r1, #4
	adds r1, #1
	muls r0, r1, r0
	lsls r0, r0, #5
	mov sb, r0
	adds r5, r4, #0
	adds r5, #0x54
	ldr r6, [r4, #0x28]
	movs r0, #0
	mov r8, r0
	ldr r3, [sp, #0xc]
	ldrb r0, [r3]
	cmp r0, #0
	beq _08006A68
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	adds r7, r4, #0
	b _08006A60
_08006A12:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08006A32
	ldr r0, [r5]
	mov r1, sl
	str r0, [r1]
	str r6, [r1, #4]
	lsrs r0, r4, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	mov r1, sl
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _08006A40
_08006A32:
	ldr r0, [r5]
	adds r1, r6, #0
	adds r2, r4, #0
	str r3, [sp, #0xc]
	bl sub_08001B18
	ldr r3, [sp, #0xc]
_08006A40:
	adds r6, r6, r4
_08006A42:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r5, #8
	ldrb r0, [r3]
	cmp r8, r0
	bhs _08006A68
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	adds r0, r7, r4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08006A60:
	cmp r4, #0
	beq _08006A42
	cmp r7, sb
	bls _08006A12
_08006A68:
	movs r0, #0
	strb r0, [r3]
_08006A6C:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	ldr r4, [sp, #8]
	cmp r1, #0x18
	bls _08006998
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
