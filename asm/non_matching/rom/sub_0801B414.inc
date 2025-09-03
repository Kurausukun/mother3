	.syntax unified
sub_0801B414:
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801B428
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_0801B428: .4byte gUnknown_08F3C344
	.syntax divided
