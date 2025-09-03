	.syntax unified
get_misctext_msg:
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r2, #7
	bne _08001C78
	cmp r5, #0xc7
	bne _08001D10
	ldr r0, _08001C74
	b _08001D22
	.align 2, 0
_08001C74: .4byte gUnknown_02004256
_08001C78:
	cmp r2, #2
	bne _08001C88
	cmp r5, #0x5c
	bne _08001D10
	ldr r0, _08001C84
	b _08001D22
	.align 2, 0
_08001C84: .4byte gUnknown_02004F02
_08001C88:
	cmp r2, #8
	bne _08001D10
	cmp r5, #4
	bgt _08001D10
	cmp r5, #1
	blt _08001D10
	movs r0, #0x1a
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _08001D00
	adds r4, r1, r0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0x19
	bl sub_08001B54
	movs r0, #0xeb
	strh r0, [r4]
	movs r0, #0xe6
	strh r0, [r4, #2]
	adds r0, r4, #4
	ldr r6, _08001D04
	adds r1, r6, #0
	movs r2, #9
	bl sub_08002420
	movs r2, #0
	ldrh r0, [r6]
	ldr r1, _08001D08
	subs r7, r5, #1
	cmp r0, r1
	beq _08001CEC
	adds r3, r6, #0
	adds r5, r1, #0
_08001CCE:
	lsls r0, r2, #1
	adds r1, r0, r4
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #8
	bhi _08001CEC
	lsls r0, r2, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r5
	bne _08001CCE
_08001CEC:
	lsls r1, r2, #1
	adds r1, r1, r4
	ldr r2, _08001D0C
	lsls r0, r7, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #4]
	adds r0, r4, #0
	b _08001D22
	.align 2, 0
_08001D00: .4byte gUnknown_02015E26
_08001D04: .4byte gUnknown_02004F14
_08001D08: .4byte 0x0000FFFF
_08001D0C: .4byte gUnknown_08CDB8B4
_08001D10:
	ldr r0, _08001D28
	adds r1, r2, #0
	bl sub_0800289C
	ldrh r2, [r0]
	lsls r1, r5, #1
	muls r1, r2, r1
	adds r1, #4
	adds r0, r0, r1
_08001D22:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001D28: .4byte _binary_build_mother3_assets_misctext_bin_start
	.syntax divided
