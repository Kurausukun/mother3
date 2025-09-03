	.syntax unified
get_misctext_len:
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08001DC4
	bl sub_0800289C
	ldrh r0, [r0]
	pop {r1}
	bx r1
	.align 2, 0
_08001DC4: .4byte _binary_build_mother3_assets_misctext_bin_start
	.syntax divided
