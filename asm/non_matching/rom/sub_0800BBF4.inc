	.syntax unified
sub_0800BBF4:
	push {lr}
	ldrh r1, [r0, #2]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0800BC30
	movs r0, #0
	bl sub_0802610C
	movs r0, #4
	bl sub_080052E4
	ldr r2, _0800BC34
	ldr r1, _0800BC38
	adds r0, r2, r1
	movs r1, #0x15
	strb r1, [r0]
	ldr r3, _0800BC3C
	adds r0, r2, r3
	strb r1, [r0]
	ldr r0, _0800BC40
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _0800BC44
	adds r2, r2, r1
	movs r0, #0x28
	strh r0, [r2]
_0800BC30:
	pop {r0}
	bx r0
	.align 2, 0
_0800BC34: .4byte gGame
_0800BC38: .4byte 0x0000595C
_0800BC3C: .4byte 0x0000595B
_0800BC40: .4byte 0x0000598C
_0800BC44: .4byte 0x00005960
	.syntax divided
