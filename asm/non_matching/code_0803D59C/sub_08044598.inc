	.syntax unified
	push {r4, lr}
	sub sp, #4
	ldr r4, _080445D0
	ldr r1, _080445D4
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _080445C8
	movs r0, #0x62
	bl sub_080486A0
	movs r1, #2
	str r1, [sp]
	movs r1, #0
	movs r2, #0x26
	movs r3, #0x87
	bl sub_08047E48
	ldr r0, _080445D8
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_080445C8:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080445D0: .4byte gSomeBlend
_080445D4: .4byte 0x0000427A
_080445D8: .4byte 0x000044F3
	.syntax divided
