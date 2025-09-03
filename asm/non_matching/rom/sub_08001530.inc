	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	ldr r1, _080015EC
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r2, #0
	mov r8, r2
	movs r6, #0
	strh r6, [r0]
	ldrh r1, [r0]
	ldr r2, _080015F0
	adds r0, r4, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r2, _080015F4
	adds r0, r4, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r0]
	movs r2, #0xb1
	lsls r2, r2, #6
	adds r0, r4, r2
	ldrh r2, [r0]
	strh r1, [r0]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	adds r1, r5, #0
	bl memclear
	adds r0, r4, r5
	adds r1, r5, #0
	bl memclear
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r4, r1
	adds r1, r5, #0
	bl memclear
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r4, r2
	adds r1, r5, #0
	bl memclear
	movs r0, #0x9c
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, #0
	bl memclear
	ldr r1, _080015F8
	adds r0, r4, r1
	ldrh r1, [r0]
	strh r6, [r0]
	ldr r2, _080015FC
	adds r0, r4, r2
	ldrh r1, [r0]
	strh r6, [r0]
	ldr r0, _08001600
	adds r1, r4, r0
	ldrb r0, [r1]
	mov r2, r8
	strb r2, [r1]
	ldr r2, _08001604
	adds r0, r4, r2
	ldrb r2, [r0]
	mov r2, r8
	strb r2, [r0]
	ldr r2, _08001608
	adds r4, r4, r2
	ldrb r2, [r4]
	mov r2, r8
	strb r2, [r4]
	ldrb r2, [r1]
	ldrb r1, [r0]
	lsls r1, r1, #5
	orrs r1, r2
	ldrb r0, [r4]
	lsls r0, r0, #0xa
	orrs r1, r0
	ldrh r0, [r5]
	strh r1, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080015EC: .4byte 0x00002C46
_080015F0: .4byte 0x00002C44
_080015F4: .4byte 0x00002C42
_080015F8: .4byte 0x00002C48
_080015FC: .4byte 0x00002C4A
_08001600: .4byte 0x00002C4C
_08001604: .4byte 0x00002C4D
_08001608: .4byte 0x00002C4E
	.syntax divided
