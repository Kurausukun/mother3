	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, _08011F10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800289C
	ldr r1, _08011F14
	movs r2, #0xa0
	lsls r2, r2, #7
	bl sub_08001A14
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800289C
	movs r1, #0xc
	movs r2, #0x80
	bl sub_08016F4C
	movs r0, #0xc
	movs r1, #4
	bl sub_0803B688
	adds r0, r5, #0
	movs r1, #1
	bl sub_08011F18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011F10: .4byte gUnknown_09B18308
_08011F14: .4byte 0x06008000
	.syntax divided
