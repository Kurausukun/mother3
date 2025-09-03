	.syntax unified
sub_0804AFC8:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r3, r0, #0
	ldr r4, _0804B018
	adds r6, r4, #0
	adds r6, #0x74
	adds r5, r4, #0
	adds r5, #0xe8
	adds r2, r4, #0
	adds r2, #0x6f
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x74
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0804B01C
	adds r2, r4, r0
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r3, #4]
	cmp r1, #0x18
	bne _0804B020
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_08050F2C
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x18
	movs r2, #0x1c
	movs r3, #0x36
	bl sub_08051254
	b _0804B070
	.align 2, 0
_0804B018: .4byte gUnknown_0201A55C
_0804B01C: .4byte 0x00000157
_0804B020:
	cmp r1, #0x20
	bne _0804B02E
	adds r0, r4, #0
	movs r1, #0x81
	bl sub_08050F88
	b _0804B070
_0804B02E:
	cmp r1, #0xa0
	bne _0804B04A
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_08050F2C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #3
	movs r3, #0x48
	bl sub_080511F8
	b _0804B070
_0804B04A:
	cmp r1, #0x7a
	bne _0804B062
	ldrb r0, [r3, #9]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3, #9]
	adds r0, r5, #0
	movs r1, #9
	movs r2, #0
	bl sub_08050F2C
	b _0804B070
_0804B062:
	movs r0, #0x9b
	lsls r0, r0, #1
	cmp r1, r0
	bne _0804B070
	movs r0, #4
	bl sub_0804B6E8
_0804B070:
	adds r0, r4, #0
	bl sub_08050D80
	adds r0, r6, #0
	bl sub_08050D80
	adds r0, r5, #0
	bl sub_08050D80
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
