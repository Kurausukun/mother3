	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
_0804BD3A:
	ldrb r0, [r4, #0xa]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	subs r2, #0xd
	adds r1, r2, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	subs r2, #0x32
	adds r1, r2, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	adds r2, #0x10
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r4, #0xa]
	movs r0, #0
	strh r0, [r4, #8]
	ldr r0, _0804BD80
	movs r1, #0x24
	bl sub_0800289C
	str r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0xc
	cmp r5, #2
	bls _0804BD3A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804BD80: .4byte gMenuData
	.syntax divided
