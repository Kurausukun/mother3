	.syntax unified
sub_08036D3C:
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08036D5C
	movs r1, #0
	bl sub_0800289C
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #1
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08036D5C: .4byte gUnknown_09436C68
	.syntax divided
