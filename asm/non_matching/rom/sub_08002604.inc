	.syntax unified
sub_08002604:
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0
	movs r4, #0xff
	lsls r4, r4, #8
	ldr r3, _08002620
_08002610:
	ldrh r1, [r2]
	adds r2, #2
	cmp r1, r4
	bne _08002624
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08002610
	.align 2, 0
_08002620: .4byte 0x0000FFFF
_08002624:
	cmp r1, r3
	bne _08002610
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
