	.syntax unified
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r4, _08056530
_08056514:
	lsls r1, r2, #1
	adds r1, r1, r4
	adds r0, r3, r2
	ldrb r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _08056514
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056530: .4byte gUnknown_0202926C
	.syntax divided
