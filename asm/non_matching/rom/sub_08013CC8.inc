	.syntax unified
	push {lr}
	sub sp, #4
	mov r2, sp
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08013CFC
	ldr r3, _08013CF4
	mov r0, sp
	ldrh r0, [r0]
	ldr r1, _08013CF8
	adds r3, r3, r1
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	b _08013D26
	.align 2, 0
_08013CF4: .4byte gGame
_08013CF8: .4byte 0x000067C4
_08013CFC:
	cmp r1, #0xb
	bgt _08013D2C
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08013D34
	adds r0, r0, r1
	adds r3, r0, #0
	adds r3, #0x24
	ldrb r2, [r3]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08013D2C
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	movs r0, #3
	rsbs r0, r0, #0
_08013D26:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_08013D2C:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08013D34: .4byte gUnknown_0200C1BC
	.syntax divided
