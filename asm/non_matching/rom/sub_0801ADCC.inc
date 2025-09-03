	.syntax unified
sub_0801ADCC:
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, r1, #0
	ldrb r2, [r0, #1]
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0xc0
	bne _0801ADE8
	ldr r0, _0801ADE4
	adds r0, r1, r0
	b _0801AE0C
	.align 2, 0
_0801ADE4: .4byte gUnknown_08D2D644
_0801ADE8:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0801ADFC
	ldr r0, _0801ADF8
	adds r0, r1, r0
	b _0801AE0C
	.align 2, 0
_0801ADF8: .4byte gUnknown_08D2D648
_0801ADFC:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _0801AE08
	adds r0, r1, #0
	b _0801AE0E
_0801AE08:
	ldr r0, _0801AE14
	adds r0, r3, r0
_0801AE0C:
	ldrb r0, [r0]
_0801AE0E:
	pop {r1}
	bx r1
	.align 2, 0
_0801AE14: .4byte gUnknown_08D2D64C
	.syntax divided
