	.syntax unified
sub_0802781C:
	push {r4, r5, r6, lr}
	ldr r5, _080278D0
	ldr r0, [r5, #0x28]
	movs r2, #0xc0
	lsls r2, r2, #1
	movs r1, #0
	bl sub_08016F4C
	movs r0, #0
	movs r1, #0xc
	bl sub_0803B688
	movs r0, #0
	bl sub_08036DDC
	movs r1, #0x10
	movs r2, #0xe0
	bl sub_08016F4C
	movs r4, #0
	ldr r1, _080278D4
	adds r0, r5, r1
	ldrh r2, [r0]
	cmp r4, r2
	bhs _08027876
	adds r6, r5, #0
	adds r5, r0, #0
_08027852:
	lsls r0, r4, #2
	ldr r2, _080278D8
	adds r1, r6, r2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x17
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x20
	bl sub_08016F4C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r5]
	cmp r4, r0
	blo _08027852
_08027876:
	ldr r0, _080278DC
	ldr r1, _080278E0
	ldr r2, _080278E4
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r1, #1
	bl sub_0800289C
	movs r1, #0xc
	movs r2, #0x20
	bl sub_08016F4C
	movs r0, #0xc
	movs r1, #1
	bl sub_0803B688
	ldr r0, _080278E8
	ldr r2, _080278EC
	adds r1, r2, #0
	strh r1, [r0, #2]
	ldr r2, _080278F0
	adds r1, r2, #0
	strh r1, [r0, #6]
	movs r1, #0
	strh r1, [r0, #0xe]
	ldr r2, _080278F4
	adds r1, r2, #0
	strh r1, [r0, #0x10]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0, #0x16]
	ldr r2, _080278F8
	adds r1, r2, #0
	strh r1, [r0, #0x1e]
	ldr r1, _080278FC
	adds r0, r0, r1
	ldr r1, _08027900
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080278D0: .4byte gGame
_080278D4: .4byte 0x00008376
_080278D8: .4byte 0x0000835C
_080278DC: .4byte gUnknown_09AF3790
_080278E0: .4byte gSave
_080278E4: .4byte 0x0000081E
_080278E8: .4byte gUnknown_03005494
_080278EC: .4byte 0x00007E9C
_080278F0: .4byte 0x0000319F
_080278F4: .4byte 0x00007FEC
_080278F8: .4byte 0x00007FFF
_080278FC: .4byte 0xFFFFFE80
_08027900: .4byte gUnknown_0200F088
	.syntax divided
