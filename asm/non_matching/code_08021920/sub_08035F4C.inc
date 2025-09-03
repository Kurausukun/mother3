	.syntax unified
sub_08035F4C:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	bl sub_08035FE4
	movs r0, #0x30
	bl sub_0803B800
	ldrb r2, [r0, #0x14]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r1, r2
	movs r2, #3
	rsbs r2, r2, #0
	mov r8, r2
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	movs r6, #0x79
	rsbs r6, r6, #0
	ands r1, r6
	strb r1, [r0, #0x14]
	movs r2, #0
	strh r2, [r0, #2]
	strh r2, [r0]
	strh r2, [r0, #0xa]
	adds r5, r0, #0
	adds r5, #0x2c
	ldrb r1, [r5]
	ands r3, r1
	mov r1, r8
	ands r3, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r3, r1
	ands r3, r6
	strb r3, [r5]
	strh r2, [r0, #0x1a]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x22]
	str r0, [r4, #0x34]
	str r0, [r4, #0x30]
	adds r4, #0xc7
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
