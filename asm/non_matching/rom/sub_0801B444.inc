	.syntax unified
sub_0801B444:
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801B458
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_0801B458: .4byte gUnknown_0904D9CC
	.syntax divided
