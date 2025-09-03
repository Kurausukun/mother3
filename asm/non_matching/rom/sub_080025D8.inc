	.syntax unified
sub_080025D8:
	push {r4, lr}
	movs r4, #0xff
	lsls r4, r4, #8
	ldr r3, _080025F4
	ldr r2, _080025F8
_080025E2:
	ldrh r1, [r0]
	cmp r1, r4
	blt _080025F0
	cmp r1, r3
	ble _080025FC
	cmp r1, r2
	beq _080025FC
_080025F0:
	adds r0, #2
	b _080025E2
	.align 2, 0
_080025F4: .4byte 0x0000FF01
_080025F8: .4byte 0x0000FFFF
_080025FC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
