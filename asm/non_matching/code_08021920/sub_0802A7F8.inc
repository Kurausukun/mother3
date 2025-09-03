	.syntax unified
sub_0802A7F8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r2, _0802A87C
	ldr r1, _0802A880
	adds r0, r2, r1
	adds r0, r3, r0
	ldrb r1, [r5]
	strb r1, [r0]
	lsls r0, r3, #0x14
	movs r4, #0
	lsrs r0, r0, #0xf
	ldr r1, _0802A884
	adds r2, r2, r1
	adds r1, r0, r2
	movs r2, #0
_0802A824:
	strh r2, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _0802A824
	movs r0, #0
	mov sb, r0
	mov r8, r0
	lsls r0, r3, #0x14
	lsrs r6, r0, #0x10
	movs r4, #0
	adds r7, r5, #0
	adds r7, #0x3c
	movs r1, #0
	mov sl, r1
_0802A844:
	adds r1, r7, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802A8AA
	bl is_equippable
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A888
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0802BA68
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A888
	movs r0, #1
	mov r1, r8
	lsls r0, r1
	mov r1, sb
	orrs r1, r0
	mov sb, r1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _0802A8AA
	.align 2, 0
_0802A87C: .4byte gSave
_0802A880: .4byte 0x0000078A
_0802A884: .4byte 0x0000078E
_0802A888:
	lsls r1, r6, #1
	ldr r0, _0802A8D0
	adds r1, r1, r0
	adds r2, r7, r4
	ldrb r0, [r2]
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r1, sl
	strb r1, [r2]
	lsls r1, r4, #1
	adds r0, r5, #0
	adds r0, #0x4c
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
_0802A8AA:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _0802A844
	adds r0, r5, #0
	bl sub_0802A574
	mov r0, sb
	str r0, [r5, #0x38]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A8D0: .4byte gUnknown_02004FEE
	.syntax divided
