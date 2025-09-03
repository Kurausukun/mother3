	.syntax unified
sub_0802E9E8:
	push {lr}
	adds r0, #0x85
	ldrb r0, [r0]
	ldrh r1, [r1, #2]
	bl sub_08036480
	ldr r1, _0802EA00
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0802EA00: .4byte gObjectContinue
	.syntax divided
