	.syntax unified
sub_0800A3EC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _0800A468
	ldr r0, _0800A46C
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0800A470
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0800A474
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080012BC
	ldr r4, _0800A478
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0xc
	bl sub_0800A4C8
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0xc
	bl sub_0800A678
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0xc
	bl sub_0800A8DC
	ldr r0, _0800A47C
	adds r5, r5, r0
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_0800AB74
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A468: .4byte gSomeBlend
_0800A46C: .4byte 0x000121BA
_0800A470: .4byte 0x00011D9A
_0800A474: .4byte 0x00011D16
_0800A478: .4byte gUnknown_080C2008
_0800A47C: .4byte 0x00011D18
	.syntax divided
