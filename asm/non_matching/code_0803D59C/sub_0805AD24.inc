	.syntax unified
sub_0805AD24:
	push {r4, lr}
	ldr r4, _0805AD44
	movs r0, #0
	strb r0, [r4]
	bl sub_0805AF34
	ldrb r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0xc]
	bl sub_0805AD54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805AD44: .4byte gUnknown_02015E00
	.syntax divided
