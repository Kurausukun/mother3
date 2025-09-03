	.syntax unified
sub_08019F44:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08019F8C
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r3, r0, #0
	movs r0, #0
_08019F58:
	movs r2, #0
	adds r5, r4, #0
	adds r5, #0x40
	adds r6, r3, #0
	adds r6, #0x40
	adds r7, r0, #1
_08019F64:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _08019F64
	adds r4, r5, #0
	adds r3, r6, #0
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _08019F58
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019F8C: .4byte gUnknown_02016078
	.syntax divided
