	.syntax unified
sub_0802519C:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r3, r5, r1
	ldrb r2, [r3]
	movs r4, #2
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r1, r2
	strb r1, [r3]
	mov ip, r5
	movs r5, #0
_080251B6:
	mov r3, ip
	adds r3, #0x22
	ldrb r1, [r3]
	adds r2, r4, #0
	ands r2, r1
	strb r2, [r3]
	adds r1, r5, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r1, #0x24
	add ip, r1
	cmp r5, #7
	bls _080251B6
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
