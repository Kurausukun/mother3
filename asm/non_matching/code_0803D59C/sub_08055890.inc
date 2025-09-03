	.syntax unified
sub_08055890:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r4, #0
	bl sub_08048748
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0
	cmp r0, r2
	bhs _080558C2
	ldr r3, _080558C8
_080558AC:
	ldrh r1, [r4]
	cmp r1, r3
	beq _080558B6
	strh r1, [r5]
	adds r5, #2
_080558B6:
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, #2
	cmp r0, r2
	blo _080558AC
_080558C2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080558C8: .4byte 0x0000FF01
	.syntax divided
