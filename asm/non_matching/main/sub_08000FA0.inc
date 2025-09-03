    .syntax unified
sub_08000FA0:
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	movs r1, #0
	bl sub_08000F04
	adds r3, r0, #0
	subs r3, #8
	movs r2, #0
	cmp r2, r4
	bhs _08000FDC
	movs r1, #3
	adds r0, r5, #0
	ands r0, r1
	lsls r5, r0, #2
	movs r6, #0xd
	rsbs r6, r6, #0
_08000FC6:
	ldrb r0, [r3, #5]
	adds r1, r6, #0
	ands r1, r0
	orrs r1, r5
	strb r1, [r3, #5]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	subs r3, #8
	cmp r2, r4
	blo _08000FC6
_08000FDC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
    .syntax divided
