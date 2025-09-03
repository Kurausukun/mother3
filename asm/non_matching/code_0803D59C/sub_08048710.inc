	.syntax unified
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r5, _0804872C
	adds r0, r5, #0
	movs r1, #0x5c
	bl sub_0800289C
	adds r4, r0, #0
	cmp r4, #0
	bne _08048730
	movs r0, #0
	b _08048740
	.align 2, 0
_0804872C: .4byte gMenuData
_08048730:
	adds r0, r5, #0
	movs r1, #0x5d
	bl sub_0800289C
	lsls r1, r6, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	adds r0, r0, r1
_08048740:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
