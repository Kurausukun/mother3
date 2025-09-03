	.syntax unified
	push {lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r0, _08047E40
	ldr r1, _08047E44
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r0, [r2, #9]
	cmp r0, #0
	beq _08047E38
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, #0x14
	ldr r2, [r2]
	adds r2, r2, r0
	mov r0, sp
	ldrh r1, [r0]
	lsls r1, r1, #7
	ldrb r3, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x10]
_08047E38:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08047E40: .4byte gSomeBlend
_08047E44: .4byte 0x0000BB14
	.syntax divided
