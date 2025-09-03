	.syntax unified
	push {r4, r5, r6, lr}
	ldr r5, _08023ED4
	ldr r0, _08023ED8
	adds r6, r5, r0
	ldrb r1, [r6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08023E62
	ldr r1, _08023EDC
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
_08023E62:
	ldr r0, _08023EE0
	adds r4, r5, r0
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r4]
	movs r1, #0x96
	lsls r1, r1, #7
	adds r0, r5, r1
	movs r3, #0
	movs r2, #0
	strh r2, [r0]
	ldr r0, _08023EE4
	adds r1, r5, r0
	movs r0, #2
	strh r0, [r1]
	ldr r0, _08023EE8
	adds r1, r5, r0
	movs r0, #0x22
	strh r0, [r1]
	movs r0, #0x72
	strh r0, [r1, #2]
	ldr r0, _08023EEC
	adds r1, r5, r0
	movs r0, #0x32
	strh r0, [r1]
	strh r2, [r1, #2]
	ldr r1, _08023EF0
	adds r0, r5, r1
	strb r3, [r0]
	ldr r1, _08023EF4
	adds r0, r5, r1
	movs r1, #0
	bl sub_0800A0A4
	ldrh r1, [r4]
	movs r0, #0xe4
	lsls r0, r0, #3
	ands r0, r1
	movs r1, #0xa4
	lsls r1, r1, #3
	cmp r0, r1
	bne _08023EC8
	ldrb r0, [r6]
	movs r1, #8
	orrs r0, r1
	strb r0, [r6]
_08023EC8:
	movs r0, #1
	bl sub_0802400C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08023ED4: .4byte gSomeBlend
_08023ED8: .4byte 0x00004B19
_08023EDC: .4byte 0x00011C92
_08023EE0: .4byte 0x00004B18
_08023EE4: .4byte 0x00004B02
_08023EE8: .4byte 0x00004B10
_08023EEC: .4byte 0x00004B14
_08023EF0: .4byte 0x00011C8B
_08023EF4: .4byte 0x00005778
	.syntax divided
