	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_08005BFC
	ldr r5, _0800A22C
	ldr r0, _0800A230
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0800A234
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	strb r0, [r2]
	ldr r4, _0800A238
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
	ldr r0, _0800A23C
	adds r5, r5, r0
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_0800AB74
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A22C: .4byte gSomeBlend
_0800A230: .4byte 0x000121B9
_0800A234: .4byte 0x00011D16
_0800A238: .4byte gUnknown_080C2008
_0800A23C: .4byte 0x00011C94
	.syntax divided
