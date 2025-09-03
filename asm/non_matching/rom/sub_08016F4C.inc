	.syntax unified
	push {lr}
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r1, r1, #0xb
	ldr r3, _08016F64
	adds r1, r1, r3
	lsrs r2, r2, #0x12
	bl sub_08090F74
	pop {r0}
	bx r0
	.align 2, 0
_08016F64: .4byte gUnknown_03005314
	.syntax divided
