	.syntax unified
sub_080740AC:
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _080740D0
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl getGoodsRTTI
	cmp r4, r0
	bne _080740D0
	movs r5, #1
_080740D0:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
