	.syntax unified
sub_080193CC:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #3
	bne _080193E2
	lsls r0, r2, #8
	movs r1, #0xf0
	orrs r0, r1
	b _080193E6
_080193E2:
	movs r0, #0xf0
	subs r0, r0, r2
_080193E6:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r3, _08019404
_080193EE:
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x9f
	bls _080193EE
	pop {r0}
	bx r0
	.align 2, 0
_08019404: .4byte gUnknown_02029238
	.syntax divided
