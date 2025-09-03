	.syntax unified
sub_08039B24:
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r5, _08039B40
	adds r0, r5, #0
	movs r1, #0x24
	bl sub_0800289C
	adds r4, r0, #0
	cmp r4, #0
	bne _08039B44
	movs r0, #0
	b _08039B54
	.align 2, 0
_08039B40: .4byte gUnknown_09AF3790
_08039B44:
	adds r0, r5, #0
	movs r1, #0x25
	bl sub_0800289C
	lsls r1, r6, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	adds r0, r0, r1
_08039B54:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
