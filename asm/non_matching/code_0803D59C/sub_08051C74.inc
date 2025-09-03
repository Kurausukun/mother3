	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r4, _08051CE8
	add sp, r4
	mov r8, r0
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, sp
	strh r2, [r0]
	movs r0, #2
	add r0, sp
	mov sb, r0
	strh r3, [r0]
	add r6, sp, #4
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r6, #0
	bl memclear
	ldr r4, _08051CEC
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0xf4
	bl sub_08001B18
	mov r0, sp
	ldrh r2, [r0]
	mov r0, sb
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08051CF4
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0xf4
	bl sub_08001B18
	mov r0, r8
	adds r1, r6, #0
	movs r2, #1
	bl sub_080522A8
	movs r0, #1
	ldr r3, _08051CF0
	add sp, r3
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08051CE8: .4byte 0xFFFFEFFC
_08051CEC: .4byte gUnknown_020050C0
_08051CF0: .4byte 0x00001004
	.syntax divided
