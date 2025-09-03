	.syntax unified
sub_0802E5F4:
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r5, #0x85
	ldrb r3, [r5]
	ldrh r1, [r4, #2]
	adds r0, #0x8b
	ldrb r0, [r0]
	movs r2, #7
	ands r2, r0
	adds r0, r3, #0
	bl sub_080332AC
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _0802E61C
	ldrb r0, [r5]
	bl sub_08033484
_0802E61C:
	ldr r1, _0802E62C
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802E62C: .4byte gObjectContinue
	.syntax divided
