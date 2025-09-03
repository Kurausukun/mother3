	.syntax unified
sub_0800A2CC:
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl sub_08005BFC
	ldr r3, _0800A31C
	ldr r0, _0800A320
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0800A324
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _0800A328
	adds r1, r3, r2
	strb r4, [r1]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0800A32C
	ldrh r0, [r5, #6]
	lsrs r0, r0, #3
	adds r2, #1
	adds r1, r3, r2
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xc
	bl sub_0800A9E0
	b _0800A344
	.align 2, 0
_0800A31C: .4byte gSomeBlend
_0800A320: .4byte 0x000121B9
_0800A324: .4byte 0x00011D16
_0800A328: .4byte 0x00011D14
_0800A32C:
	ldrh r0, [r5, #6]
	lsrs r0, r0, #3
	subs r0, #2
	ldr r2, _0800A34C
	adds r1, r3, r2
	strb r0, [r1]
	ldr r1, _0800A350
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0xc
	bl sub_0800A8DC
_0800A344:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A34C: .4byte 0x00011D15
_0800A350: .4byte gUnknown_080C2008
	.syntax divided
