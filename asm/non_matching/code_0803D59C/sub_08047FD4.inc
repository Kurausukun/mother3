	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x34
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r6, #0
	movs r7, #1
	rsbs r7, r7, #0
_08047FF2:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800255C
	adds r5, r0, #0
	cmp r5, #0
	beq _0804805E
	bl sub_080025D8
	adds r4, r0, #0
	subs r4, r4, r5
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	adds r0, r5, #0
	add r1, sp, #4
	bl sub_08001B18
	lsrs r4, r4, #0x11
	lsls r4, r4, #1
	mov r1, sp
	adds r1, r1, r4
	adds r1, #4
	ldr r0, _0804806C
	strh r0, [r1]
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r4, r4, #4
	ldr r0, _08048070
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #0x30
	adds r2, r7, #0
	bl sub_08001B54
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_08048108
	mov r0, r8
	adds r2, r0, r6
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0xf
	str r0, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r3, r7, #0
	bl sub_08047B9C
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _08047FF2
_0804805E:
	add sp, #0x34
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804806C: .4byte 0x0000FFFF
_08048070: .4byte gMenuState
	.syntax divided
