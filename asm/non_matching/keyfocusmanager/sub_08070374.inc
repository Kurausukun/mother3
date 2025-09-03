	.syntax unified
sub_08070374:
	push {r4, lr}
	adds r4, r0, #0
	bl get__12ClockManager
	bl getTime__5Clock
	ldr r1, [r4, #0x34]
	subs r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
