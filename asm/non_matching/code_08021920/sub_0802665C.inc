	.syntax unified
sub_0802665C:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0
	bl get_obj_direct
	ldr r3, _0802669C
	adds r1, r0, #0
	adds r1, #0x8b
	ldrb r2, [r1]
	movs r1, #7
	ands r1, r2
	strb r1, [r3, #1]
	movs r2, #1
	strb r2, [r3, #5]
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	strh r1, [r3, #0x34]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r3, #0x36]
	ldr r0, _080266A0
	ldr r1, _080266A4
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _080266A8
	strb r2, [r3, #3]
	b _080266AC
	.align 2, 0
_0802669C: .4byte gEncounter
_080266A0: .4byte gGame
_080266A4: .4byte 0x0000829B
_080266A8:
	movs r0, #0
	strb r0, [r3, #3]
_080266AC:
	lsls r2, r4, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080266F8
	lsrs r0, r2, #0x10
	bl get_obj_direct
	adds r3, r0, #0
	ldr r2, _080266F4
	adds r0, #0x8b
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	strb r0, [r2, #2]
	adds r0, r3, #0
	adds r0, #0x88
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x52
	strb r4, [r0]
	adds r1, r2, #0
	adds r1, #0x3d
	movs r0, #1
	strb r0, [r1]
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r2, #0x38]
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r2, #0x3a]
	b _08026714
	.align 2, 0
_080266F4: .4byte gEncounter
_080266F8:
	ldr r2, _0802671C
	movs r1, #0
	strb r1, [r2, #2]
	ldr r0, _08026720
	strh r0, [r2, #0xc]
	adds r3, r2, #0
	adds r3, #0x52
	movs r0, #0xff
	strb r0, [r3]
	subs r3, #0x15
	movs r0, #1
	strb r0, [r3]
	strh r1, [r2, #0x38]
	strh r1, [r2, #0x3a]
_08026714:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802671C: .4byte gEncounter
_08026720: .4byte 0x0000FFFF
	.syntax divided
