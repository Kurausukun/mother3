	.syntax unified
sub_0804C8C0:
	push {r4, r5, r6, lr}
	ldr r4, _0804C920
	ldr r1, _0804C924
	adds r0, r4, r1
	movs r6, #0
	strb r6, [r0]
	ldr r2, _0804C928
	adds r5, r4, r2
	ldrh r1, [r5]
	ldr r0, _0804C92C
	ands r0, r1
	strh r0, [r5]
	bl sub_0804C944
	bl sub_08055788
	ldr r0, _0804C930
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r5]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	ldr r2, _0804C934
	adds r1, r4, r2
	strh r0, [r1]
	ldr r1, _0804C938
	adds r0, r4, r1
	bl sub_0804BB10
	movs r0, #0
	bl sub_0804B6E8
	ldr r2, _0804C93C
	adds r0, r4, r2
	strh r6, [r0]
	ldr r0, _0804C940
	adds r4, r4, r0
	movs r0, #0x14
	strb r0, [r4]
	bl sub_08049DC4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C920: .4byte gSomeBlend
_0804C924: .4byte 0x00004A30
_0804C928: .4byte 0x00004ECE
_0804C92C: .4byte 0xFFFFFE1F
_0804C930: .4byte 0x0000C5B4
_0804C934: .4byte 0x0000C5BE
_0804C938: .4byte 0x000044F8
_0804C93C: .4byte 0x00003024
_0804C940: .4byte 0x00004261
	.syntax divided
