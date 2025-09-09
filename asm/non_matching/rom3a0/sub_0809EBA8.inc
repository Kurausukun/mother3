	.syntax unified
sub_0809EBA8:
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x50]
	cmp r0, #1
	ble _0809EBB4
	movs r1, #1
_0809EBB4:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
