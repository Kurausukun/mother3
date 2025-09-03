	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x2c]
	ldr r0, [r0]
	cmp r0, #1
	beq _08089A7C
	cmp r0, #1
	bgt _08089A76
	cmp r0, #0
	beq _08089A80
	b _08089A8A
_08089A76:
	cmp r0, #2
	beq _08089A80
	b _08089A8A
_08089A7C:
	ldr r0, [r2, #0x30]
	b _08089A8C
_08089A80:
	lsls r0, r1, #2
	ldr r1, [r2, #0x3c]
	adds r1, r1, r0
	ldr r0, [r1]
	b _08089A8C
_08089A8A:
	movs r0, #0
_08089A8C:
	pop {r1}
	bx r1
	.syntax divided
