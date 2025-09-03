	.syntax unified
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	bl sub_0805734C
	ldr r0, _08057240
	ldr r1, _08057244
	movs r2, #0xa0
	lsls r2, r2, #3
	bl sub_08001B18
	ldr r0, _08057248
	adds r4, #9
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_0800289C
	ldr r1, _0805724C
	movs r2, #0xc0
	lsls r2, r2, #7
	bl sub_08001B18
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057240: .4byte gUnknown_02017878
_08057244: .4byte 0x0600F800
_08057248: .4byte gUnknown_09BCDD8C
_0805724C: .4byte 0x06008000
	.syntax divided
