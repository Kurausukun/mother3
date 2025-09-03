	.syntax unified
sub_0806E640:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_0806B070
	mov r8, r0
	movs r1, #0
	bl sub_0806B95C
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, r8
	movs r1, #0
	movs r2, #0
	bl sub_0806B680
	adds r5, r0, #0
	mov r0, r8
	movs r1, #0
	movs r2, #0
	bl sub_0806B828
	adds r4, r0, #0
	mov r0, r8
	movs r1, #0
	bl sub_0806B744
	adds r1, r0, #0
	movs r0, #0
	mov sl, r0
	ldr r3, _0806E6D0
	add r7, sp, #4
	ldr r2, _0806E6D4
	mov ip, r2
_0806E68C:
	adds r6, r0, #0
	adds r6, #8
	movs r2, #0xf8
_0806E692:
	mov r0, sl
	str r0, [sp, #4]
	str r7, [r3]
	str r4, [r3, #4]
	mov r0, ip
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r0, sb
	orrs r0, r1
	strh r0, [r5]
	adds r5, #2
	adds r4, #0x20
	adds r1, #1
	subs r2, #8
	cmp r2, #0
	bge _0806E692
	adds r0, r6, #0
	cmp r0, #0xaf
	ble _0806E68C
	mov r0, r8
	movs r1, #0
	bl sub_0806B3F4
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E6D0: .4byte 0x040000D4
_0806E6D4: .4byte 0x85000008
	.syntax divided
