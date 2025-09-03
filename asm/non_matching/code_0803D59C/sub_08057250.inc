	.syntax unified
	push {r4, lr}
	ldr r0, _08057284
	movs r1, #0x33
	bl sub_0800289C
	adds r1, r0, #0
	ldr r4, _08057288
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r4, #0
	movs r2, #0
	bl sub_0800160C
	movs r1, #0x9c
	lsls r1, r1, #6
	adds r0, r4, r1
	ldr r1, _0805728C
	adds r4, r4, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r4, #0
	bl sub_08001B18
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057284: .4byte gUnknown_09BCDD8C
_08057288: .4byte gUnknown_02016078
_0805728C: .4byte 0x00002CAC
	.syntax divided
