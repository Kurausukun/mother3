	.syntax unified
	push {lr}
	ldr r0, [r0, #0x30]
	cmp r0, #0
	bne _080842D2
	bl sub_08070754
	bl setsleep
	b _080842DC
_080842D2:
	cmp r0, #1
	bne _080842DC
	movs r0, #1
	bl setsleep
_080842DC:
	pop {r0}
	bx r0
	.syntax divided
