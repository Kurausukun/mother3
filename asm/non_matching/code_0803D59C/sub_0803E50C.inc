	.syntax unified
sub_0803E50C:
	push {r4, r5, lr}
	ldr r1, _0803E560
	ldr r0, _0803E564
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r4, _0803E568
	ldr r0, _0803E56C
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0803E570
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bl sub_080026C0
	adds r5, r4, #0
	adds r5, #0x50
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803E578
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803E6EC
	ldr r0, _0803E574
	ldrh r0, [r0]
	cmp r0, #0
	bne _0803E554
	bl snd_main
_0803E554:
	bl sub_080030A4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E560: .4byte gUnknown_0200F920
_0803E564: .4byte 0x00006474
_0803E568: .4byte gSomeBlend
_0803E56C: .4byte 0x000044F8
_0803E570: .4byte 0x000044FC
_0803E574: .4byte gUnknown_03004B00
	.syntax divided
