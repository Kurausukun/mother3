	.syntax unified
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801B51C
	bl sub_0800289C
	ldr r1, [r0]
	adds r1, #0x14
	adds r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_0801B51C: .4byte gUnknown_0916CB08
	.syntax divided
