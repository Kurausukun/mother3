	.syntax unified
sub_08046974:
	push {r4, r5, r6, lr}
	sub sp, #0x14
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r1, _080469BC
	ldr r0, _080469C0
	adds r4, r1, r0
	ldrh r0, [r4]
	cmp r0, r3
	beq _0804699E
	ldr r2, _080469C4
	adds r0, r1, r2
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	strh r3, [r4]
_0804699E:
	ldr r0, _080469C8
	mov r1, sp
	movs r2, #0x14
	bl sub_08001B18
	mov r0, sp
	strh r6, [r0, #0x10]
	strh r5, [r0, #0x12]
	bl sub_08046A64
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080469BC: .4byte gSomeBlend
_080469C0: .4byte 0x0000C5BC
_080469C4: .4byte 0x0000C5B5
_080469C8: .4byte gUnknown_080C66D4
	.syntax divided
