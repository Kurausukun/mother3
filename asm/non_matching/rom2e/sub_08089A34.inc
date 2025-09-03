	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x2c]
	ldr r0, [r0]
	cmp r0, #1
	beq _08089A50
	cmp r0, #1
	bgt _08089A4A
	cmp r0, #0
	beq _08089A54
	b _08089A58
_08089A4A:
	cmp r0, #2
	beq _08089A54
	b _08089A58
_08089A50:
	movs r0, #1
	b _08089A5A
_08089A54:
	ldr r0, [r1, #0x38]
	b _08089A5A
_08089A58:
	movs r0, #0
_08089A5A:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
