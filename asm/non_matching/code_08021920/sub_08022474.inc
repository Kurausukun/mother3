	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080224D8
	ldr r2, _080224DC
	adds r7, r0, r2
	ldr r2, [r7]
	ldrb r0, [r2, #9]
	cmp r0, #0xf
	bhi _080224D2
	lsls r0, r0, #4
	ldr r2, [r2]
	adds r2, r2, r0
	str r4, [r2]
	strh r3, [r2, #0xc]
	movs r0, #0xf
	ands r1, r0
	ldrb r3, [r2, #0xe]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	movs r1, #0x31
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #0xe]
	strh r6, [r2, #8]
	strh r5, [r2, #0xa]
	ldr r1, [r7]
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
_080224D2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080224D8: .4byte gSomeBlend
_080224DC: .4byte 0x00011960
	.syntax divided
