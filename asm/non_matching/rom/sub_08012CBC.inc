	.syntax unified
sub_08012CBC:
	push {r4, lr}
	ldr r2, _08012CD4
	movs r3, #0
	movs r4, #1
_08012CC4:
	ldrb r1, [r2, #0xc]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08012CD8
	adds r0, r2, #0
	b _08012CE6
	.align 2, 0
_08012CD4: .4byte gUnknown_0200C07C
_08012CD8:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x10
	cmp r3, #0x13
	bls _08012CC4
	movs r0, #0
_08012CE6:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
