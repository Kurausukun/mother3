	.syntax unified
sub_080486D8:
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r5, _080486F4
	adds r0, r5, #0
	movs r1, #0x5a
	bl sub_0800289C
	adds r4, r0, #0
	cmp r4, #0
	bne _080486F8
	movs r0, #0
	b _08048708
	.align 2, 0
_080486F4: .4byte gMenuData
_080486F8:
	adds r0, r5, #0
	movs r1, #0x5b
	bl sub_0800289C
	lsls r1, r6, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	adds r0, r0, r1
_08048708:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
