	.syntax unified
sub_080225B4:
	push {r4, lr}
	sub sp, #4
	mov r2, sp
	strh r0, [r2]
	mov r4, sp
	adds r4, #2
	strh r1, [r4]
	ldr r0, _08022604
	ldr r1, _08022608
	adds r0, r0, r1
	ldr r3, [r0]
	ldrb r0, [r3, #9]
	cmp r0, #0
	beq _080225FA
	lsls r0, r0, #4
	subs r0, #0x10
	ldr r3, [r3]
	adds r3, r3, r0
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #0xe]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xe]
	ldrh r1, [r4]
	lsls r1, r1, #7
	movs r2, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xe]
_080225FA:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022604: .4byte gSomeBlend
_08022608: .4byte 0x0001197C
	.syntax divided
