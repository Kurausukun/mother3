	.syntax unified
sub_0806FDBC:
	push {r4, r5, lr}
	ldr r1, _0806FDF0
	ldr r0, [r1]
	cmp r0, #0
	ble _0806FDE8
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806FDE8
	ldr r5, _0806FDF4
	ldr r2, [r5]
	cmp r2, #0
	beq _0806FDE6
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806FDE6:
	str r4, [r5]
_0806FDE8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806FDF0: .4byte gUnknown_02001F20
_0806FDF4: .4byte gUnknown_02001F24
	.syntax divided
