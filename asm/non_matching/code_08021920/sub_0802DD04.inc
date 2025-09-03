	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x28
	bl sub_08002998
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0802DD8A
	cmp r1, #5
	bls _0802DD1C
	movs r1, #5
_0802DD1C:
	movs r2, #0
	movs r0, #0
	subs r1, #1
	cmp r1, #4
	bhi _0802DD86
	lsls r0, r1, #2
	ldr r1, _0802DD30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802DD30: .4byte _0802DD34
_0802DD34:
	.4byte _0802DD48
	.4byte _0802DD52
	.4byte _0802DD5C
	.4byte _0802DD66
	.4byte _0802DD70
_0802DD48:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #1
	b _0802DD78
_0802DD52:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #3
	b _0802DD78
_0802DD5C:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #7
	b _0802DD78
_0802DD66:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xf
	b _0802DD78
_0802DD70:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0x1f
_0802DD78:
	adds r2, r1, #0
	ands r2, r0
	ldr r0, _0802DD90
	ldr r3, _0802DD94
	adds r0, r0, r3
	ldr r0, [r0]
	ands r0, r1
_0802DD86:
	cmp r0, r2
	bne _0802DD98
_0802DD8A:
	movs r0, #0
	b _0802DD9A
	.align 2, 0
_0802DD90: .4byte gGame
_0802DD94: .4byte 0x00009D10
_0802DD98:
	movs r0, #1
_0802DD9A:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
