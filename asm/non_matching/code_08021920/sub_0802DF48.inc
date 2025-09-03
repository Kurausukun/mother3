	.syntax unified
sub_0802DF48:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r1, [r4, #2]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe
	bhi _0802DF6E
	adds r0, r1, #0
	bl sub_0802B8C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802DF72
_0802DF6E:
	movs r0, #0
	b _0802DF8C
_0802DF72:
	movs r0, #4
	ldrsh r4, [r4, r0]
	lsls r4, r4, #0x14
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r2, #0
	bl sub_08036734
	cmp r0, r4
	bhs _0802DF6E
	movs r0, #1
_0802DF8C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
