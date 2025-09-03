	.syntax unified
sub_0802DFC0:
	push {r4, lr}
	movs r2, #2
	ldrsh r4, [r1, r2]
	lsls r4, r4, #0x14
	lsrs r4, r4, #0x10
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08036734
	cmp r0, r4
	blo _0802DFDC
	movs r0, #0
	b _0802DFDE
_0802DFDC:
	movs r0, #1
_0802DFDE:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
