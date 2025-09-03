	.syntax unified
sub_08057BDC:
	push {r4, r5, r6, lr}
	adds r1, r0, #0
	ldr r5, _08057C58
	ldr r0, _08057C5C
	adds r6, r5, r0
	ldrb r0, [r6]
	movs r2, #2
	orrs r0, r2
	strb r0, [r6]
	movs r0, #0
	strh r0, [r1, #0x2e]
	movs r0, #2
	strh r0, [r1, #0x30]
	ldr r0, _08057C60
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08057C08
	movs r0, #1
	strh r0, [r1, #0x2e]
	movs r0, #3
	strh r0, [r1, #0x30]
_08057C08:
	adds r3, r1, #0
	adds r3, #0x38
	ldrb r0, [r3]
	orrs r2, r0
	strb r2, [r3]
	movs r1, #0
	ldr r0, _08057C64
	ldrb r0, [r0]
	cmp r0, #1
	bne _08057C1E
	movs r1, #1
_08057C1E:
	lsls r1, r1, #2
	movs r0, #5
	rsbs r0, r0, #0
	ands r2, r0
	orrs r2, r1
	movs r4, #8
	orrs r2, r4
	strb r2, [r3]
	ldr r1, _08057C68
	adds r0, r5, r1
	bl sub_08056CC0
	movs r0, #0xc4
	lsls r0, r0, #6
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrh r0, [r5, #8]
	movs r0, #0x40
	strh r0, [r5, #8]
	ldrb r0, [r6]
	orrs r0, r4
	strb r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057C58: .4byte gSomeBlend
_08057C5C: .4byte 0x00002CB1
_08057C60: .4byte gUnknown_02015DA0
_08057C64: .4byte gUnknown_020047D0
_08057C68: .4byte 0x00002CB0
	.syntax divided
