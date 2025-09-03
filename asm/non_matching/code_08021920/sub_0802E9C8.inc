	.syntax unified
sub_0802E9C8:
	push {lr}
	ldrh r0, [r1, #2]
	adds r0, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_08036450
	ldr r1, _0802E9E4
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0802E9E4: .4byte gObjectContinue
	.syntax divided
