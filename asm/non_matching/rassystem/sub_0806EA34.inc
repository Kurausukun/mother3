	.syntax unified
sub_0806EA34:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	adds r1, #0x20
	mov r5, sp
	mov r0, sp
	bl __7SettingRC7Setting
	adds r0, r6, #0
	adds r0, #0x2c
	bl len__3Msg
	mov r1, sp
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r6, #0
	adds r2, #0x40
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	muls r0, r1, r0
	movs r2, #2
	ldrsh r1, [r5, r2]
	strh r0, [r4]
	strh r1, [r4, #2]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
