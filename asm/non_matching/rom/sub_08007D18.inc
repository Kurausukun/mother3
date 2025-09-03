	.syntax unified
sub_08007D18:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08007D58
	ldr r1, _08007D5C
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _08007D68
	ldr r2, _08007D60
	adds r3, r4, r2
	ldrb r0, [r3]
	movs r0, #0x1f
	strb r0, [r3]
	ldr r5, _08007D64
	adds r1, r4, r5
	ldrb r2, [r1]
	strb r0, [r1]
	adds r5, #1
	adds r2, r4, r5
	ldrb r4, [r2]
	strb r0, [r2]
	movs r4, #0xa0
	lsls r4, r4, #0x13
	ldrb r3, [r3]
	ldrb r0, [r1]
	lsls r0, r0, #5
	orrs r0, r3
	ldrb r1, [r2]
	lsls r1, r1, #0xa
	orrs r0, r1
	strh r0, [r4]
	b _08007D82
	.align 2, 0
_08007D58: .4byte gGame
_08007D5C: .4byte 0x0000595B
_08007D60: .4byte 0x00002C4C
_08007D64: .4byte 0x00002C4D
_08007D68:
	ldr r1, _08007D88
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08007D8C
	adds r0, r4, r2
	ldrb r2, [r0]
	strb r1, [r0]
	ldr r5, _08007D90
	adds r0, r4, r5
	ldrb r2, [r0]
	strb r1, [r0]
_08007D82:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007D88: .4byte 0x00002C4C
_08007D8C: .4byte 0x00002C4D
_08007D90: .4byte 0x00002C4E
	.syntax divided
