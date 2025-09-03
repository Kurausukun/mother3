	.syntax unified
sub_08047E48:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x60
	adds r1, r0, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	add r0, sp, #8
	mov r2, r8
	bl sub_08002420
	ldr r4, _08047EA0
	adds r0, r4, #0
	movs r1, #0x58
	mov r2, r8
	bl sub_08001B54
	adds r0, r4, #0
	add r1, sp, #8
	bl sub_08048108
	movs r0, #0xf
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_08047CDC
	add sp, #0x60
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08047EA0: .4byte gUnknown_0201A31C
	.syntax divided
