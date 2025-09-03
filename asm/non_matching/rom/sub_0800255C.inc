	.syntax unified
sub_0800255C:
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	cmp r3, r1
	bhs _08002598
	ldr r5, _08002580
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r0, #0
_08002572:
	ldrh r0, [r2]
	adds r2, #2
	cmp r0, r5
	bne _08002584
	movs r0, #0
	b _0800259A
	.align 2, 0
_08002580: .4byte 0x0000FFFF
_08002584:
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08002572
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r1
	blo _08002572
_08002598:
	adds r0, r2, #0
_0800259A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
