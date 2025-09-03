	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldrb r1, [r6, #0x1d]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805A9B2
	ldrh r2, [r6, #0x14]
	ldrh r0, [r6, #0x12]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r3, [r6, #0x14]
	movs r0, #0
	movs r1, #0x1f
	bl sub_08002E60
	adds r2, r0, #0
	mov r4, r8
	adds r0, r4, r7
	cmp r4, r0
	bge _0805A99E
	lsls r5, r2, #0x10
_0805A940:
	lsls r0, r4, #5
	ldr r1, _0805A95C
	adds r2, r0, r1
	ldr r1, [r6]
	adds r1, r1, r0
	ldrb r0, [r6, #0x1c]
	cmp r0, #1
	beq _0805A974
	cmp r0, #1
	bgt _0805A960
	cmp r0, #0
	beq _0805A96A
	b _0805A990
	.align 2, 0
_0805A95C: .4byte gUnknown_02018778
_0805A960:
	cmp r0, #2
	beq _0805A97E
	cmp r0, #3
	beq _0805A988
	b _0805A990
_0805A96A:
	adds r0, r2, #0
	lsrs r2, r5, #0x10
	bl sub_0805A9BC
	b _0805A990
_0805A974:
	adds r0, r2, #0
	lsrs r2, r5, #0x10
	bl sub_0805AA90
	b _0805A990
_0805A97E:
	adds r0, r2, #0
	lsrs r2, r5, #0x10
	bl sub_0805AB48
	b _0805A990
_0805A988:
	adds r0, r2, #0
	lsrs r2, r5, #0x10
	bl sub_0805AC30
_0805A990:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r1, r8
	adds r0, r1, r7
	cmp r4, r0
	blt _0805A940
_0805A99E:
	ldrh r0, [r6, #0x12]
	cmp r0, #0
	bne _0805A9AE
	ldrb r0, [r6, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #0x1d]
	b _0805A9B2
_0805A9AE:
	subs r0, #1
	strh r0, [r6, #0x12]
_0805A9B2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
