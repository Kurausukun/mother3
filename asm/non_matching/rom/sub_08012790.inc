	.syntax unified
sub_08012790:
	push {lr}
	ldr r1, _080127A4
	movs r2, #0
_08012796:
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080127A8
	adds r0, r1, #0
	b _080127B6
	.align 2, 0
_080127A4: .4byte gUnknown_0200B960
_080127A8:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #0x18
	cmp r2, #0x13
	bls _08012796
	movs r0, #0
_080127B6:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
