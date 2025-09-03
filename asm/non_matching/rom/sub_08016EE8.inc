	.syntax unified
sub_08016EE8:
	push {r4, lr}
	ldr r4, _08016F14
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r4, #0
	bl memclear
	movs r0, #0xb1
	lsls r0, r0, #6
	adds r4, r4, r0
	ldrh r0, [r4]
	movs r0, #1
	strh r0, [r4]
	ldr r0, _08016F18
	movs r1, #0x80
	lsls r1, r1, #3
	bl memclear
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016F14: .4byte gUnknown_02016078
_08016F18: .4byte gUnknown_03005314
	.syntax divided
