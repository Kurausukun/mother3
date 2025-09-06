	.syntax unified
setsleep:
	push {r4, lr}
	adds r4, r0, #0
	bl get__12ClockManager
	adds r1, r4, #0
	bl sleep__5Clocki
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
