	.syntax unified
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #5
	bl sub_08001DC8
	str r0, [sp]
	ldr r0, [sp]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08051A48
	ldr r0, [sp]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bne _08051A64
	ldrh r0, [r4]
	cmp r0, #2
	bne _08051A64
	ldrh r1, [r4, #2]
	ldr r0, _08051A44
	cmp r1, r0
	bne _08051A64
	movs r0, #1
	b _08051A66
	.align 2, 0
_08051A44: .4byte 0x0000334D
_08051A48:
	ldrb r0, [r4, #2]
	cmp r0, #0x4d
	beq _08051A64
	ldrb r0, [r4, #3]
	cmp r0, #0x33
	beq _08051A64
	ldr r0, _08051A70
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_08051A64:
	movs r0, #0
_08051A66:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08051A70: .4byte gUnknown_020050C0
	.syntax divided
