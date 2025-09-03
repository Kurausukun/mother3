	.syntax unified
sub_08027F38:
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r4, _08027F54
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800289C
	adds r5, r0, #0
	cmp r5, r4
	bne _08027F58
	movs r0, #0
	b _08027F68
	.align 2, 0
_08027F54: .4byte _binary_build_mother3_assets_mainscript_bin_start
_08027F58:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800289C
	lsls r1, r6, #1
	adds r1, r1, r5
	ldrh r1, [r1]
	adds r0, r0, r1
_08027F68:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
