	.syntax unified
sub_080A5DD4:
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A5DEE
	cmp r0, #1
	beq _080A5DF8
	movs r0, #0
	b _080A5E0E
_080A5DEE:
	ldr r1, [r2, #0x1c]
	movs r4, #0x8a
	lsls r4, r4, #3
	adds r1, r1, r4
	b _080A5E00
_080A5DF8:
	ldr r1, [r2, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
_080A5E00:
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
_080A5E0E:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
