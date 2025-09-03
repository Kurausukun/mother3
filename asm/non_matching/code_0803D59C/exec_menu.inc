	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080506A4
	adds r0, r4, #0
	bl sub_08050734
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804CAA0
	ldr r1, _0804CA24
	ldr r0, _0804CA28
	adds r3, r1, r0
	ldrb r2, [r3]
	lsls r0, r2, #0x1e
	adds r5, r1, #0
	cmp r0, #0
	bge _0804CA2C
	movs r0, #1
	orrs r0, r2
	b _0804CA3A
	.align 2, 0
_0804CA24: .4byte gSomeBlend
_0804CA28: .4byte 0x000044F2
_0804CA2C:
	ldrb r1, [r4, #0xe]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
_0804CA3A:
	strb r0, [r3]
	adds r2, r5, #0
	ldr r1, _0804CA54
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804CA58
	adds r0, r4, #0
	bl sub_0804E16C
	b _0804CAA0
	.align 2, 0
_0804CA54: .4byte 0x000041DA
_0804CA58:
	ldr r3, _0804CA74
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804CA7C
	ldr r0, _0804CA78
	adds r1, r2, r0
	adds r0, r4, #0
	bl sub_0804E078
	b _0804CAA0
	.align 2, 0
_0804CA74: .4byte 0x000041C6
_0804CA78: .4byte 0x00003060
_0804CA7C:
	ldr r3, _0804CAA8
	adds r1, r5, r3
	ldrb r0, [r1]
	cmp r0, #0x12
	bhi _0804CAA0
	ldr r0, _0804CAAC
	ldrb r1, [r1]
	lsls r2, r1, #2
	adds r2, r2, r0
	lsls r1, r1, #5
	movs r3, #0xb8
	lsls r3, r3, #6
	adds r0, r5, r3
	adds r1, r1, r0
	ldr r2, [r2]
	adds r0, r4, #0
	bl _call_via_r2
_0804CAA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804CAA8: .4byte 0x00004260
_0804CAAC: .4byte gUnknown_09B8FEC8
	.syntax divided
