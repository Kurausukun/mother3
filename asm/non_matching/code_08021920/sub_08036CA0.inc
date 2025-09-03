	.syntax unified
sub_08036CA0:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r4, _08036CBC
	bl sub_08036C68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r4
	ldrh r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08036CBC: .4byte gUnknown_08D2E060
	.syntax divided
