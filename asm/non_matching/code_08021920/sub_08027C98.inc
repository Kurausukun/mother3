	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldrh r2, [r4, #2]
	ldrh r3, [r4]
	bl sub_08002E60
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r0, [r4, #8]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	bl sub_08003C48
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	bls _08027CD2
	ldrb r1, [r4, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #8]
_08027CD2:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
