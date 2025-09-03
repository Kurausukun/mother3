	.syntax unified
sub_0803FE48:
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	ldr r0, _0803FE74
	movs r2, #0xcc
	lsls r2, r2, #0xe
	adds r1, r1, r2
	lsrs r1, r1, #0x10
	bl sub_0800289C
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	ldr r1, _0803FE78
	adds r1, r1, r2
	movs r2, #0xd0
	lsls r2, r2, #6
	bl sub_08001B18
	pop {r0}
	bx r0
	.align 2, 0
_0803FE74: .4byte gMenuData
_0803FE78: .4byte 0x06001000
	.syntax divided
