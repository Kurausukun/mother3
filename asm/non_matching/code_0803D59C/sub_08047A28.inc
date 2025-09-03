	.syntax unified
sub_08047A28:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x64
	muls r0, r4, r0
	ldr r3, _08047A6C
	adds r0, r0, r3
	adds r0, #0x36
	lsls r1, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r1, r1, r3
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #0xf
	str r3, [sp]
	movs r3, #9
	bl sub_08047B9C
	cmp r4, #1
	bne _08047A62
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl sub_08047D90
_08047A62:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047A6C: .4byte gUnknown_020050C8
	.syntax divided
