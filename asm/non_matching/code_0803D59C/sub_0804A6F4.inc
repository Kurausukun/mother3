	.syntax unified
sub_0804A6F4:
	push {r4, r5, lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0804A730
	bl sub_0800289C
	adds r5, r0, #0
	ldr r4, _0804A734
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r1, r0, #0
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r5, #0
	bl sub_08001B18
	movs r0, #0xb1
	lsls r0, r0, #6
	adds r4, r4, r0
	ldrh r0, [r4]
	movs r0, #1
	strh r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A730: .4byte gMenuData
_0804A734: .4byte gUnknown_02016078
	.syntax divided
