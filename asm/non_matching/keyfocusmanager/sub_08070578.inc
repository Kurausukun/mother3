	.syntax unified
	push {lr}
	ldr r0, [r0, #0x24]
	movs r1, #0
	cmp r0, #0
	ble _08070584
	movs r1, #1
_08070584:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
