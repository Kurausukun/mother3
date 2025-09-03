	.syntax unified
sub_0801AE18:
	push {lr}
	ldrb r1, [r0, #1]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0xc0
	bne _0801AE2C
	ldr r0, _0801AE28
	b _0801AE4E
	.align 2, 0
_0801AE28: .4byte gUnknown_08D2D644
_0801AE2C:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801AE3C
	ldr r0, _0801AE38
	b _0801AE4E
	.align 2, 0
_0801AE38: .4byte gUnknown_08D2D648
_0801AE3C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801AE4C
	ldr r0, _0801AE48
	b _0801AE4E
	.align 2, 0
_0801AE48: .4byte gUnknown_08D2D650
_0801AE4C:
	ldr r0, _0801AE54
_0801AE4E:
	pop {r1}
	bx r1
	.align 2, 0
_0801AE54: .4byte gUnknown_08D2D64C
	.syntax divided
