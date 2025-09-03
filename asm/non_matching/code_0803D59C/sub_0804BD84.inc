	.syntax unified
sub_0804BD84:
	push {lr}
	ldr r0, _0804BD98
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0804BE3A
	lsls r0, r0, #2
	ldr r1, _0804BD9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804BD98: .4byte gUnknown_02004100
_0804BD9C: .4byte _0804BDA0
_0804BDA0:
	.4byte _0804BDB4
	.4byte _0804BDD0
	.4byte _0804BDEC
	.4byte _0804BE08
	.4byte _0804BE24
_0804BDB4:
	ldr r0, _0804BDC8
	ldr r1, _0804BDCC
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	bl sub_0804BE64
	b _0804BE3A
	.align 2, 0
_0804BDC8: .4byte gSomeBlend
_0804BDCC: .4byte 0x0000C5B5
_0804BDD0:
	ldr r0, _0804BDE4
	ldr r1, _0804BDE8
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	bl sub_0804BEB4
	b _0804BE3A
	.align 2, 0
_0804BDE4: .4byte gSomeBlend
_0804BDE8: .4byte 0x0000C5B5
_0804BDEC:
	ldr r0, _0804BE00
	ldr r1, _0804BE04
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	bl sub_0804BEFC
	b _0804BE3A
	.align 2, 0
_0804BE00: .4byte gSomeBlend
_0804BE04: .4byte 0x0000C5B5
_0804BE08:
	ldr r0, _0804BE1C
	ldr r1, _0804BE20
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	bl sub_0804BF34
	b _0804BE3A
	.align 2, 0
_0804BE1C: .4byte gSomeBlend
_0804BE20: .4byte 0x0000C5B5
_0804BE24:
	ldr r0, _0804BE54
	ldr r1, _0804BE58
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	bl sub_0804C050
	bl sub_08052964
_0804BE3A:
	ldr r2, _0804BE54
	ldr r0, _0804BE5C
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _0804BE60
	adds r2, r2, r1
	movs r0, #0
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0804BE54: .4byte gSomeBlend
_0804BE58: .4byte 0x0000C5B5
_0804BE5C: .4byte 0x000044F2
_0804BE60: .4byte 0x00004263
	.syntax divided
