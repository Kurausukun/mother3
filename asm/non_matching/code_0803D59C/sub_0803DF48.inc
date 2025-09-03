	.syntax unified
sub_0803DF48:
	push {r4, lr}
	ldr r0, _0803DF8C
	ldr r1, _0803DF90
	adds r2, r0, r1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803DF74
	adds r4, r2, #0
_0803DF60:
	bl sub_0803E260
	bl sub_08001960
	bl sub_0803E50C
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0803DF60
_0803DF74:
	ldr r0, _0803DF8C
	ldr r1, _0803DF90
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DF8C: .4byte gUnknown_0200F920
_0803DF90: .4byte 0x00006478
	.syntax divided
