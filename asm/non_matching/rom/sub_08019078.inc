	.syntax unified
sub_08019078:
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0
	lsls r1, r0, #8
	movs r2, #0xf0
	orrs r1, r2
	lsls r1, r1, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	movs r6, #1
	ldr r5, _0801909C
_08019090:
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	beq _080190A0
	lsrs r3, r1, #0x10
	b _080190A2
	.align 2, 0
_0801909C: .4byte gUnknown_02029238
_080190A0:
	lsrs r3, r2, #0x10
_080190A2:
	lsls r0, r4, #1
	adds r0, r0, r5
	strh r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x9f
	bls _08019090
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
