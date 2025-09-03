	.syntax unified
	push {r4, lr}
	sub sp, #0xc
	adds r1, r0, #0
	ldrh r0, [r1]
	cmp r0, #1
	bne _0804E426
	bl sub_0804F968
	b _0804E460
_0804E426:
	ldr r4, _0804E468
	movs r0, #0x80
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #6
	bl sub_080534C8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804E460
	ldr r0, _0804E46C
	ldrh r3, [r4]
	ldr r1, _0804E470
	adds r0, r0, r1
	strb r3, [r0]
	ldr r0, _0804E474
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0804E478
	adds r0, r4, r1
	strb r3, [r0]
_0804E460:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E468: .4byte gUnknown_0201A1F2
_0804E46C: .4byte gSave
_0804E470: .4byte 0x0000081E
_0804E474: .4byte 0x000083EA
_0804E478: .4byte 0x000083F6
	.syntax divided
