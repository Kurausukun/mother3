	.syntax unified
create__11FuelFactoryUs:
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x84
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r4, #0
	bl sub_080A008C
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
