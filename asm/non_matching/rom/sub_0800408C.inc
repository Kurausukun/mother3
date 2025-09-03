	.syntax unified
	push {r4, r5, r6, r7, lr}
	movs r0, #0
	bl get_obj_direct
	ldr r2, _080040E8
	ldr r0, _080040EC
	ldr r1, _080040F0
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r3, #0x88
	lsls r3, r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	movs r4, #0
	adds r5, r2, #0
	movs r7, #0
	ldr r0, _080040F4
	adds r6, r5, r0
_080040B0:
	adds r0, r4, #0
	bl get_obj_direct
	lsls r3, r4, #1
	ldr r1, _080040F8
	adds r2, r5, r1
	adds r2, r3, r2
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	strh r1, [r2]
	movs r1, #0x8b
	lsls r1, r1, #2
	adds r2, r5, r1
	adds r2, r3, r2
	ldrh r1, [r0, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	strh r1, [r2]
	adds r0, #0x8b
	ldrb r2, [r0]
	lsrs r0, r2, #3
	cmp r0, #0xc
	bls _080040FC
	adds r0, r3, r6
	strh r7, [r0]
	b _08004104
	.align 2, 0
_080040E8: .4byte gSave
_080040EC: .4byte gGame
_080040F0: .4byte 0x000067AC
_080040F4: .4byte 0x00000236
_080040F8: .4byte 0x00000222
_080040FC:
	adds r1, r3, r6
	movs r0, #7
	ands r0, r2
	strh r0, [r1]
_08004104:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _080040B0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
