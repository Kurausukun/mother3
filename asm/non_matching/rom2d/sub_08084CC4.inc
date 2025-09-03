	.syntax unified
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #0x30]
	cmp r0, #0
	bgt _08084CD2
	movs r2, #1
_08084CD2:
	cmp r2, #0
	bne _08084CEC
	adds r1, #0x38
	movs r0, #0
	ldrsb r0, [r1, r0]
	subs r0, #1
	cmp r0, #0
	blt _08084CEC
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	movs r0, #1
	b _08084CEE
_08084CEC:
	movs r0, #0
_08084CEE:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
