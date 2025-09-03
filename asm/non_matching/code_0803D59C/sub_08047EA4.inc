	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	adds r5, r0, #0
	ldr r0, [sp, #0x70]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08047ECA
	movs r2, #1
	rsbs r2, r2, #0
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_08002420
	b _08047EEE
_08047ECA:
	adds r0, r5, #0
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
	ldr r0, _08047F20
	strh r0, [r1]
_08047EEE:
	ldr r4, _08047F24
	movs r5, #1
	rsbs r5, r5, #0
	adds r0, r4, #0
	movs r1, #0x58
	adds r2, r5, #0
	bl sub_08001B54
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_08048108
	movs r0, #0xf
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08047B9C
	add sp, #0x5c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047F20: .4byte 0x0000FFFF
_08047F24: .4byte gUnknown_0201A31C
	.syntax divided
