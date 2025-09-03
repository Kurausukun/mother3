	.syntax unified
	push {r4, lr}
	adds r3, r0, #0
	ldr r1, _08050DA8
	ldr r0, _08050DAC
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, #7
	bhi _08050DA0
	lsls r0, r0, #2
	ldr r4, _08050DB0
	adds r1, r1, r4
	adds r0, r0, r1
	str r3, [r0]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_08050DA0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050DA8: .4byte gSomeBlend
_08050DAC: .4byte 0x00004530
_08050DB0: .4byte 0x00004504
	.syntax divided
