	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0801B4E0
	movs r1, #0
	bl sub_0800289C
	lsls r4, r4, #4
	adds r0, r0, r4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801B4E0: .4byte gUnknown_09165C10
	.syntax divided
