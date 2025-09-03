	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r4, _08027F98
	adds r2, #1
	lsls r6, r2, #1
	lsls r2, r2, #0x11
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0800289C
	adds r5, r0, #0
	cmp r5, r4
	bne _08027F9C
	movs r0, #0
	b _08027FB0
	.align 2, 0
_08027F98: .4byte _binary_build_mother3_assets_mainscript_bin_start
_08027F9C:
	adds r1, r6, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0800289C
	lsls r1, r7, #1
	adds r1, r1, r5
	ldrh r1, [r1]
	adds r0, r0, r1
_08027FB0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
