	.syntax unified
sub_0804B804:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0804B848
	adds r4, r0, #0
	adds r4, #0x74
	adds r5, r0, #0
	adds r5, #0xe8
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	adds r0, r4, #0
	movs r1, #0x8a
	bl sub_08050F88
	movs r1, #0x14
	rsbs r1, r1, #0
	adds r0, r5, #0
	movs r2, #0x2e
	bl sub_08051080
	adds r0, r5, #0
	movs r1, #1
	movs r2, #6
	bl sub_08050F2C
	ldrb r0, [r6, #9]
	movs r1, #2
	orrs r0, r1
	strb r0, [r6, #9]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B848: .4byte gUnknown_0201A55C
	.syntax divided
