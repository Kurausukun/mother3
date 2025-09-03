	.syntax unified
sub_0803F3B0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0xfe
	bl sub_08036DF4
	ldr r4, _0803F414
	ldr r2, _0803F418
	adds r1, r4, r2
	str r0, [r1]
	movs r0, #0xa6
	bl sub_08036DF4
	adds r5, r0, #0
	bl sub_08002C4C
	movs r1, #2
	bl sub_08002ABC
	ldr r2, _0803F41C
	adds r1, r4, r2
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08002C4C
	movs r1, #1
	bl sub_08002ABC
	ldr r1, _0803F420
	adds r4, r4, r1
	str r0, [r4]
	movs r2, #0
	movs r4, #2
	rsbs r4, r4, #0
	movs r3, #3
	rsbs r3, r3, #0
	adds r6, #0x6f
_0803F3F8:
	ldrb r0, [r6]
	adds r1, r4, #0
	ands r1, r0
	ands r1, r3
	strb r1, [r6]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r6, #0x74
	cmp r2, #0xa
	bls _0803F3F8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803F414: .4byte gSomeBlend
_0803F418: .4byte 0x00004524
_0803F41C: .4byte 0x00004528
_0803F420: .4byte 0x0000452C
	.syntax divided
