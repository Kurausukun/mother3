	.syntax unified
sub_08047D90:
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r3, sp
	strh r0, [r3]
	mov r5, sp
	adds r5, #2
	strh r1, [r5]
	add r6, sp, #4
	strh r2, [r6]
	ldr r0, _08047DFC
	ldr r1, _08047E00
	adds r0, r0, r1
	ldr r3, [r0]
	ldrb r0, [r3, #0x11]
	cmp r0, #0
	beq _08047DF2
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, #0x14
	ldr r3, [r3]
	adds r3, r3, r0
	mov r0, sp
	ldrh r0, [r0]
	movs r4, #1
	adds r1, r4, #0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #0x10]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x10]
	ldrh r1, [r5]
	lsls r1, r1, #7
	movs r2, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x10]
	ldrh r0, [r6]
	ands r4, r0
	ldrb r1, [r3, #0x11]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r3, #0x11]
_08047DF2:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08047DFC: .4byte gSomeBlend
_08047E00: .4byte 0x0000BAF8
	.syntax divided
