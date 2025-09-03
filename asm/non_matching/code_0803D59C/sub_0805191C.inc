	.syntax unified
	push {r4, r5, r6, lr}
	ldr r4, _08051984
	add sp, r4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r5, _08051988
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08051952
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r1, _0805198C
	add r1, sp
	movs r2, #0x20
	bl sub_08001B18
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_08051952:
	add r4, sp, #4
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r4, #0
	bl memclear
	adds r0, r5, #0
	movs r1, #0xf4
	bl memclear
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_08052208
	adds r0, r4, #0
	bl sub_08051A08
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08051990
	bl sub_08052100
	movs r0, #0
	b _080519B2
	.align 2, 0
_08051984: .4byte 0xFFFFEFDC
_08051988: .4byte gUnknown_020050C0
_0805198C: .4byte 0x00001004
_08051990:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xf4
	bl sub_08001B18
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080519B0
	ldr r0, _080519BC
	add r0, sp
	adds r1, r5, #0
	adds r1, #0xd0
	movs r2, #0x20
	bl sub_08001B18
_080519B0:
	movs r0, #1
_080519B2:
	ldr r3, _080519C0
	add sp, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080519BC: .4byte 0x00001004
_080519C0: .4byte 0x00001024
	.syntax divided
