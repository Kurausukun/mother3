	.syntax unified
sub_0807BE24:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r2, sp
	strh r1, [r2]
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r5, r0, r1
	mov r6, sp
	movs r4, #0
	ldr r2, [r5, #4]
	cmp r4, r2
	bge _0807BE7A
	ldr r0, [r5, #8]
	adds r3, r0, #2
	adds r1, r0, #0
_0807BE42:
	ldrh r0, [r1]
	ldrh r7, [r6]
	cmp r0, r7
	bne _0807BE6E
	adds r0, r4, #1
	subs r0, r2, r0
	adds r2, r1, #0
	ldr r4, [r5, #4]
	cmp r0, #0
	ble _0807BE66
	adds r1, r0, #0
_0807BE58:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0807BE58
_0807BE66:
	subs r0, r4, #1
	str r0, [r5, #4]
	movs r0, #1
	b _0807BE7C
_0807BE6E:
	adds r3, #2
	adds r1, #2
	adds r4, #1
	ldr r2, [r5, #4]
	cmp r4, r2
	blt _0807BE42
_0807BE7A:
	movs r0, #0
_0807BE7C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
