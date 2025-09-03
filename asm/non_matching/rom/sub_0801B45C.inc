	.syntax unified
sub_0801B45C:
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x11
	lsrs r2, r0, #0x10
	cmp r1, #2
	beq _0801B46E
	movs r0, #1
	orrs r2, r0
_0801B46E:
	ldr r0, _0801B47C
	adds r1, r2, #0
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_0801B47C: .4byte gUnknown_0911DEB4
	.syntax divided
