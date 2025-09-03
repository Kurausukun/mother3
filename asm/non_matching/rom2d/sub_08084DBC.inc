	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08084DE4
	adds r0, r4, #0
	bl sub_08084E88
	movs r0, #0xd1
	bl playSound
_08084DE4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
