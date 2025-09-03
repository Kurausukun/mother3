	.syntax unified
sub_08047F28:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	movs r7, #0
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
_08047F4A:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0800255C
	adds r6, r0, #0
	cmp r6, #0
	beq _08047FBC
	bl sub_080025D8
	adds r4, r0, #0
	subs r4, r4, r6
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	adds r0, r6, #0
	add r1, sp, #8
	bl sub_08001B18
	lsrs r4, r4, #0x11
	lsls r4, r4, #1
	mov r1, sp
	adds r1, r1, r4
	adds r1, #8
	ldr r0, _08047FCC
	strh r0, [r1]
	lsls r4, r7, #1
	adds r4, r4, r7
	lsls r5, r4, #4
	ldr r0, _08047FD0
	adds r5, r5, r0
	adds r0, r5, #0
	movs r1, #0x30
	mov r2, r8
	bl sub_08001B54
	adds r0, r5, #0
	add r1, sp, #8
	bl sub_08048108
	lsls r4, r4, #2
	add r4, sb
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0xf
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r5, #0
	mov r1, sl
	adds r2, r4, #0
	mov r3, r8
	bl sub_08047CDC
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #1
	bls _08047F4A
_08047FBC:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047FCC: .4byte 0x0000FFFF
_08047FD0: .4byte gMenuState
	.syntax divided
