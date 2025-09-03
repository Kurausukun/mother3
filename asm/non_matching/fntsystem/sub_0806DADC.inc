	.syntax unified
sub_0806DADC:
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #0x20]
	ldr r0, [r5, #0x78]
	str r0, [sp]
	adds r1, r5, #0
	adds r1, #0x38
	add r4, sp, #4
	adds r0, r4, #0
	bl sub_08088830
	adds r1, r5, #0
	adds r1, #0x74
	adds r0, r4, #0
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp]
	str r0, [r5, #0x78]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08088638
	adds r0, r5, #0
	adds r0, #0x7c
	adds r1, r5, #0
	adds r1, #0x74
	adds r2, r5, #0
	adds r2, #0x54
	adds r3, r5, #0
	adds r3, #0x68
	bl sub_08088900
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
