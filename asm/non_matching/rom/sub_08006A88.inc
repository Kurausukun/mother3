	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r5, [r7, #0x54]
	ldr r4, [r7, #0x28]
	movs r6, #0
_08006A92:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x60
	bl sub_08001A14
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #0x20
	bl sub_080019DC
	adds r5, #0x60
	adds r4, #0x80
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #2
	bls _08006A92
	adds r0, r4, #0
	movs r1, #0x80
	bl sub_080019DC
	adds r1, r7, #0
	adds r1, #0x90
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
