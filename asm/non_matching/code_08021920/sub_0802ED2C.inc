	.syntax unified
sub_0802ED2C:
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xc4
	ldrb r2, [r1, #2]
	lsls r2, r2, #2
	ldrh r3, [r4]
	ldr r1, _0802ED54
	ands r1, r3
	orrs r1, r2
	strh r1, [r4]
	bl sub_0802DE5C
	ldr r1, _0802ED58
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802ED54: .4byte 0xFFFFFC03
_0802ED58: .4byte gObjectContinue
	.syntax divided
