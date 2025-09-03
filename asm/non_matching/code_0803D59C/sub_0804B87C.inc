	.syntax unified
sub_0804B87C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r7, _0804B938
	adds r5, r7, #0
	adds r5, #0x74
	adds r6, r7, #0
	adds r6, #0xe8
	movs r0, #0xae
	lsls r0, r0, #1
	adds r4, r7, r0
	movs r1, #8
	rsbs r1, r1, #0
	adds r0, r7, #0
	movs r2, #0x36
	bl sub_08051080
	movs r1, #0x20
	rsbs r1, r1, #0
	adds r0, r5, #0
	movs r2, #0x36
	bl sub_08051080
	movs r1, #0x14
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #0x36
	bl sub_08051080
	adds r0, r7, #0
	movs r1, #0x7a
	bl sub_08050F88
	adds r0, r5, #0
	movs r1, #0x70
	bl sub_08050F88
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	adds r0, r4, #0
	movs r1, #0x68
	bl sub_08050F88
	adds r0, r7, #0
	movs r1, #7
	movs r2, #1
	movs r3, #0x50
	bl sub_080511F8
	adds r0, r5, #0
	movs r1, #7
	movs r2, #1
	movs r3, #0x50
	bl sub_080511F8
	adds r0, r4, #0
	movs r1, #7
	movs r2, #1
	movs r3, #0x50
	bl sub_080511F8
	adds r0, r4, #0
	movs r1, #8
	bl sub_08050FF0
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r2, r7, r1
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0804B93C
	adds r2, r7, r0
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	mov r1, r8
	ldrb r0, [r1, #9]
	movs r1, #2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #9]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B938: .4byte gUnknown_0201A55C
_0804B93C: .4byte 0x0000018D
	.syntax divided
