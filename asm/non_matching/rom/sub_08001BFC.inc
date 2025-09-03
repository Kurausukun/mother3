	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, _08001C28
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_0800289C
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #9
	bl sub_0800289C
	lsls r4, r4, #1
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r5, r5, r0
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08001C28: .4byte _binary_build_mother3_assets_misctext_bin_start
	.syntax divided
