	.syntax unified
	push {lr}
	bl sub_0805A568
	ldr r0, _0805A30C
	ldrb r1, [r0, #0xc]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0, #0xc]
	bl sub_0805A310
	pop {r0}
	bx r0
	.align 2, 0
_0805A30C: .4byte gUnknown_02015DE0
	.syntax divided
