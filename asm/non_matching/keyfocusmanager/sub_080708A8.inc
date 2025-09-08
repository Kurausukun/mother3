	.syntax unified
_._5Combo:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080708DC
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _080708BE
	adds r1, r4, #0
	bl remove__5ComboP5Combo
_080708BE:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _080708CE
	movs r1, #0
_080708C6:
	str r1, [r0, #0x24]
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bne _080708C6
_080708CE:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080708DC: .4byte _vt.5Combo
	.syntax divided
