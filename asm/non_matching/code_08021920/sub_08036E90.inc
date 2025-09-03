	.syntax unified
	push {r4, lr}
	lsls r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #0x12
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	bl sub_08036D18
	adds r4, r0, #0
	movs r0, #0
	bl sub_08036DDC
	ldrb r1, [r4, #1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x17
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
