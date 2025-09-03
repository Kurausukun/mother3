	.syntax unified
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r5, #0x85
	ldrb r0, [r5]
	ldrh r1, [r4, #2]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08033374
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _0802ED18
	ldrb r0, [r5]
	bl sub_08033484
_0802ED18:
	ldr r1, _0802ED28
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802ED28: .4byte gObjectContinue
	.syntax divided
