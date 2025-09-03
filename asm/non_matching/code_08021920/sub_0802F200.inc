	.syntax unified
sub_0802F200:
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	movs r4, #2
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bne _0802F210
	movs r3, #1
_0802F210:
	adds r2, #0xbd
	lsls r3, r3, #2
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldr r1, _0802F230
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802F230: .4byte gObjectContinue
	.syntax divided
