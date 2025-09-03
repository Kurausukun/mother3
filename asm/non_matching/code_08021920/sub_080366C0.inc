	.syntax unified
sub_080366C0:
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r0, r5
	bne _080366E0
	movs r0, #0
	b _0803672C
_080366D2:
	ldr r0, _080366DC
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	b _0803672C
	.align 2, 0
_080366DC: .4byte gUnknown_08D2E0EE
_080366E0:
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, r5, #0
	bl get_obj_direct
	adds r2, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	ldrh r2, [r2, #2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08090F70
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #5
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r4, r0, #0
_08036716:
	cmp r3, r2
	blo _080366D2
	adds r0, r2, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bls _08036716
	movs r0, #3
_0803672C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
