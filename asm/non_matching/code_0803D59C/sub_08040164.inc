	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r6, _080401B0
	adds r0, r6, #0
	movs r1, #0x19
	bl sub_0800289C
	adds r7, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r7, r1
	ldr r4, _080401B4
	movs r5, #0x80
	lsls r5, r5, #4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08001A14
	movs r1, #0xd0
	lsls r1, r1, #6
	adds r0, r7, r1
	adds r4, r4, r5
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r4, #0
	bl sub_08001A14
	adds r0, r6, #0
	movs r1, #0x1b
	bl sub_0800289C
	adds r7, r0, #0
	ldr r1, _080401B8
	bl sub_08090F88
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080401B0: .4byte gMenuData
_080401B4: .4byte 0x06013000
_080401B8: .4byte 0x06017800
	.syntax divided
