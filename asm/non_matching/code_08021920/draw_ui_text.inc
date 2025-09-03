	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [sp, #0x14]
	ldr r4, [sp, #0x18]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r2, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08022554
	ldr r3, _08022558
	adds r3, r3, r0
	mov ip, r3
	ldr r3, [r3]
	ldrb r0, [r3, #9]
	cmp r0, #0xf
	bhi _0802254E
	lsls r0, r0, #4
	ldr r3, [r3]
	adds r3, r3, r0
	str r5, [r3]
	strh r2, [r3, #0xc]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r3, #0xe]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	movs r2, #3
	adds r1, r4, #0
	ands r1, r2
	lsls r1, r1, #4
	movs r2, #0x31
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r3, #0xe]
	strh r7, [r3, #8]
	strh r6, [r3, #0xa]
	mov r0, ip
	ldr r1, [r0]
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
_0802254E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022554: .4byte gSomeBlend
_08022558: .4byte 0x0001197C
	.syntax divided
