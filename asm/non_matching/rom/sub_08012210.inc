	.syntax unified
sub_08012210:
	push {r4, lr}
	ldr r2, _08012234
	movs r3, #0
	movs r4, #2
	rsbs r4, r4, #0
_0801221A:
	ldrb r0, [r2, #2]
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2, #2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	cmp r3, #0x27
	bls _0801221A
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012234: .4byte gUnknown_0200BB40
	.syntax divided
