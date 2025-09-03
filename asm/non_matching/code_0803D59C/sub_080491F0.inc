	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	mov r8, r5
	adds r0, r6, #0
	movs r1, #0x60
	bl memclear
	adds r0, r7, #0
	movs r1, #0x60
	bl memclear
	adds r1, r4, #0
	adds r1, #0xc0
	ldrh r0, [r1]
	cmp r0, r5
	bne _08049234
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x60
	bl sub_08001B18
	adds r0, r4, #0
	adds r0, #0x60
	adds r1, r7, #0
	movs r2, #0x60
	bl sub_08001B18
	b _08049274
_08049234:
	ldrh r1, [r1]
	adds r0, r1, #1
	cmp r0, r5
	bne _08049256
	adds r0, r4, #0
	adds r0, #0x20
	adds r1, r6, #0
	movs r2, #0x40
	bl sub_08001B18
	adds r0, r4, #0
	adds r0, #0x80
	adds r1, r7, #0
	movs r2, #0x40
	bl sub_08001B18
	b _08049274
_08049256:
	adds r0, r1, #2
	cmp r0, r8
	bne _08049274
	adds r0, r4, #0
	adds r0, #0x40
	adds r1, r6, #0
	movs r2, #0x20
	bl sub_08001B18
	adds r0, r4, #0
	adds r0, #0xa0
	adds r1, r7, #0
	movs r2, #0x20
	bl sub_08001B18
_08049274:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
