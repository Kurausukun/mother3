	.syntax unified
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, _08052F70
	movs r0, #0xe6
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	adds r4, r3, #0
	cmp r0, #0x62
	bhi _08052EDC
	mov r3, ip
	ldrb r0, [r3]
	cmp r0, #0
	ble _08052EE8
_08052EDC:
	movs r0, #0xd6
	strb r0, [r2]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r2, #4
_08052EE8:
	adds r3, r4, #0
	adds r3, #0xe7
	ldrb r0, [r3]
	cmp r0, #0x62
	bhi _08052EF6
	cmp r0, #0
	ble _08052F02
_08052EF6:
	movs r0, #0xd7
	strb r0, [r2]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r2, #4
_08052F02:
	adds r3, r4, #0
	adds r3, #0xe8
	ldrb r0, [r3]
	cmp r0, #0x62
	bhi _08052F10
	cmp r0, #0
	ble _08052F1C
_08052F10:
	movs r0, #0xd8
	strb r0, [r2]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r2, #4
_08052F1C:
	adds r3, r4, #0
	adds r3, #0xe9
	ldrb r0, [r3]
	cmp r0, #0x62
	bhi _08052F2A
	cmp r0, #0
	ble _08052F36
_08052F2A:
	movs r0, #0xd9
	strb r0, [r2]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r2, #4
_08052F36:
	adds r3, r4, #0
	adds r3, #0xea
	ldrb r0, [r3]
	cmp r0, #0x62
	bhi _08052F44
	cmp r0, #0
	ble _08052F50
_08052F44:
	movs r0, #0xda
	strb r0, [r2]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r2, #4
_08052F50:
	adds r3, r4, #0
	adds r3, #0xeb
	ldrb r0, [r3]
	cmp r0, #0x62
	bhi _08052F5E
	cmp r0, #0
	ble _08052F68
_08052F5E:
	movs r0, #0xdb
	strb r0, [r2]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08052F68:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052F70: .4byte gSave
	.syntax divided
