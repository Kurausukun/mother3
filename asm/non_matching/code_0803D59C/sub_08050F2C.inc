	.syntax unified
	push {lr}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08050F44
	adds r2, r1, #0
	b _08050F4E
_08050F44:
	lsls r0, r1, #0x10
	asrs r0, r0, #0xd
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08050F4E:
	mov r3, ip
	adds r3, #0x5c
	ldrb r0, [r3]
	cmp r0, r2
	beq _08050F80
	movs r1, #0
	strb r2, [r3]
	mov r2, ip
	adds r2, #0x5e
	ldr r0, _08050F84
	strh r0, [r2]
	mov r0, ip
	adds r0, #0x64
	strh r1, [r0]
	adds r2, #0x11
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
_08050F80:
	pop {r0}
	bx r0
	.align 2, 0
_08050F84: .4byte 0x0000FFFF
	.syntax divided
