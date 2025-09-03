	.syntax unified
sub_08004FB4:
	push {r4, r5, lr}
	bl sub_0800519C
	ldr r4, _08004FE8
	adds r0, r4, #0
	bl sub_0800164C
	ldr r1, _08004FEC
	ldrb r0, [r1]
	cmp r0, #2
	bne _08004FF4
	ldr r0, _08004FF0
	adds r1, r4, r0
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl exec_mode
	bl nullsub_3
	b _080050E6
	.align 2, 0
_08004FE8: .4byte gUnknown_02018CC8
_08004FEC: .4byte gGame
_08004FF0: .4byte 0xFFFFD360
_08004FF4:
	cmp r0, #3
	bne _08005018
	ldr r0, _08005014
	adds r1, r4, r0
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	bl sub_08024148
	bl sub_080093F0
	b _080050AE
	.align 2, 0
_08005014: .4byte 0xFFFFD360
_08005018:
	cmp r0, #4
	bne _0800503C
	ldr r0, _08005038
	adds r1, r4, r0
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	bl sub_080242C4
	bl sub_080093F0
	b _080050AE
	.align 2, 0
_08005038: .4byte 0xFFFFD360
_0800503C:
	cmp r0, #5
	bne _08005060
	ldr r0, _0800505C
	adds r1, r4, r0
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	bl sub_0802443C
	bl sub_080093F0
	b _080050AE
	.align 2, 0
_0800505C: .4byte 0xFFFFD360
_08005060:
	cmp r0, #0xd
	bne _08005090
	ldr r0, _0800508C
	adds r1, r4, r0
	ldrh r2, [r1, #8]
	movs r3, #0x98
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl exec_mode
	bl sub_08038F90
	bl update_oam
	bl nullsub_3
	b _080050E6
	.align 2, 0
_0800508C: .4byte 0xFFFFD360
_08005090:
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _080050AE
	ldr r0, _080050EC
	adds r1, r4, r0
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	bl nullsub_6
_080050AE:
	ldr r4, _080050F0
	adds r0, r4, #0
	bl nullsub_2
	ldr r5, _080050F4
	ldrb r1, [r5, #1]
	movs r0, #5
	ands r0, r1
	cmp r0, #1
	beq _080050E6
	bl sub_08023148
	ldr r1, _080050F8
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _080050D8
	adds r0, r4, #0
	bl exec_mode
_080050D8:
	bl sub_080051E0
	adds r0, r4, #0
	bl nullsub_1
	bl nullsub_3
_080050E6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080050EC: .4byte 0xFFFFD360
_080050F0: .4byte gUnknown_02018CC8
_080050F4: .4byte gGame
_080050F8: .4byte 0x00009D14
	.syntax divided
