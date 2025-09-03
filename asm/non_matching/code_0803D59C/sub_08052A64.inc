	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _08052AE8
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, #0
	bl memclear
	ldr r0, _08052AEC
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	adds r6, r4, #0
	movs r7, #0
	mov r8, r1
_08052A84:
	ldr r1, _08052AF0
	lsls r0, r7, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r0, _08052AF4
	lsls r5, r4, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08052AD4
	ldrb r0, [r6, #2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r6, #2]
	strb r4, [r6]
	ldr r0, _08052AF8
	adds r0, r5, r0
	ldrh r0, [r0]
	bl get_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r1, [r6, #2]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6, #2]
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r6, #4
_08052AD4:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x51
	bls _08052A84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052AE8: .4byte gUnknown_02019C24
_08052AEC: .4byte 0x00000682
_08052AF0: .4byte gUnknown_080C6F60
_08052AF4: .4byte gUnknown_080C7004
_08052AF8: .4byte gUnknown_080C70A8
	.syntax divided
