	.syntax unified
sub_080036E8:
	push {r4, r5, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, [sp, #0x2c]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsrs r2, r2, #0xb
	adds r2, r1, r2
	lsrs r3, r3, #0x10
	cmp r3, r4
	bhi _08003716
_08003702:
	lsls r0, r3, #1
	adds r1, r0, r2
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r4
	bls _08003702
_08003716:
	add sp, #0x20
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
