	.syntax unified
sub_0806811C:
	push {lr}
	bl sub_08087944
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0806812E
	movs r0, #0
	b _08068130
_0806812E:
	movs r0, #1
_08068130:
	pop {r1}
	bx r1
	.syntax divided
