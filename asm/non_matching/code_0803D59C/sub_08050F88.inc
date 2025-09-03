	.syntax unified
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r3, r2, #0
	adds r3, #0x5c
	ldrb r0, [r3]
	cmp r0, r4
	beq _08050FC0
	movs r1, #0
	strb r4, [r3]
	adds r3, #2
	ldr r0, _08050FC8
	strh r0, [r3]
	adds r0, r2, #0
	adds r0, #0x64
	strh r1, [r0]
	adds r2, #0x6f
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
_08050FC0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050FC8: .4byte 0x0000FFFF
	.syntax divided
