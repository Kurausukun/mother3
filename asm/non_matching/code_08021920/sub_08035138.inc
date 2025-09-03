	.syntax unified
sub_08035138:
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08035146
	movs r0, #0
	b _0803516A
_08035146:
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	ldr r1, [r0, #0x40]
	movs r5, #0x14
	movs r4, #0
_08035156:
	adds r0, r1, #0
	bl sub_08034FE4
	adds r1, r0, #0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08035156
	adds r0, r1, #0
_0803516A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
