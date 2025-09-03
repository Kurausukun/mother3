	.syntax unified
sub_0806E74C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	movs r5, #1
	ldr r0, [r0, #0x20]
	cmp r5, r0
	bge _0806E7A4
	ldr r0, _0806E794
	mov ip, r0
	ldr r4, [r1]
	ands r4, r0
	mov r1, sp
	movs r7, #0
	mov r2, r8
	adds r2, #0x2c
_0806E76E:
	movs r3, #0
	ldr r0, [r2]
	mov r6, ip
	ands r0, r6
	cmp r0, r4
	bne _0806E77C
	movs r3, #1
_0806E77C:
	cmp r3, #0
	beq _0806E798
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	ldr r0, [sp]
	str r0, [r2]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	movs r0, #1
	b _0806E7A6
	.align 2, 0
_0806E794: .4byte 0x00FFFFFF
_0806E798:
	adds r2, #8
	adds r5, #1
	mov r3, r8
	ldr r0, [r3, #0x20]
	cmp r5, r0
	blt _0806E76E
_0806E7A4:
	movs r0, #0
_0806E7A6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
