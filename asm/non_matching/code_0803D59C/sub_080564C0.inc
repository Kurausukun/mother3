	.syntax unified
sub_080564C0:
	push {r4, r5, r6, lr}
	movs r3, #0
	ldr r4, _08056508
	adds r6, r4, #0
	adds r6, #0x40
	adds r5, r4, #0
	adds r5, #0x80
_080564CE:
	lsls r1, r3, #1
	adds r0, r1, r4
	strh r3, [r0]
	adds r2, r1, r6
	lsls r0, r3, #5
	strh r0, [r2]
	adds r1, r1, r5
	lsls r0, r3, #0xa
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x1f
	bls _080564CE
	bl sub_0805BAD4
	bl sub_0805650C
	bl sub_0805BAF4
	bl sub_08056534
	bl sub_0805BB14
	bl sub_0805655C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056508: .4byte gUnknown_0202926C
	.syntax divided
