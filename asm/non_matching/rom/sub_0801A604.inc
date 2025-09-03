	.syntax unified
sub_0801A604:
	push {lr}
	ldr r0, _0801A618
	ldrb r0, [r0, #0xe]
	lsrs r0, r0, #6
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_0801A618: .4byte gGame
	.syntax divided
