	.syntax unified
sub_08023EF8:
	push {r4, lr}
	bl sub_08023F4C
	ldr r4, _08023F30
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08023F40
	movs r0, #0
	bl sub_0802610C
	movs r0, #4
	bl sub_080052E4
	ldr r1, _08023F34
	adds r0, r4, r1
	movs r1, #1
	strb r1, [r0]
	ldr r2, _08023F38
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08023F3C
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _08023F46
	.align 2, 0
_08023F30: .4byte gGame
_08023F34: .4byte 0x0000595C
_08023F38: .4byte 0x0000595B
_08023F3C: .4byte 0x0000598C
_08023F40:
	movs r0, #0
	bl sub_0802610C
_08023F46:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
