	.syntax unified
cmd_7E:
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	bl get_obj
	cmp r0, #0
	beq _080205DA
	ldr r1, _080205E0
	adds r0, #0x85
	ldrb r2, [r0]
	ldr r3, _080205E4
	adds r0, r1, r3
	strb r2, [r0]
	ldr r0, _080205E8
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_080205DA:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080205E0: .4byte gGame
_080205E4: .4byte 0x0000595D
_080205E8: .4byte 0x0000598C
	.syntax divided
