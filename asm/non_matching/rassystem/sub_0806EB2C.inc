	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4, #0x38]
	str r0, [sp, #4]
	bl sub_0806E4B8
	ldr r2, [r0, #0x1c]
	adds r2, #0x68
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r5, #0
	movs r0, #0x2c
	adds r0, r0, r4
	mov sl, r0
	mov r8, sl
	adds r7, r4, #0
	adds r7, #0x20
	add r6, sp, #4
	b _0806EBA6
_0806EB6E:
	mov r0, r8
	adds r1, r5, #0
	bl sub_0806E334__3Msgi
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x4c
	adds r1, r7, #0
	add r2, sp, #4
	mov r3, sb
	bl sub_08089178
	add r0, sp, #8
	adds r1, r7, #0
	bl __7SettingRC7Setting
	ldr r1, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	adds r5, #1
_0806EBA6:
	mov r0, r8
	bl len__3Msg
	cmp r5, r0
	blt _0806EB6E
	ldr r0, [r4, #0x38]
	str r0, [r4, #0x44]
	mov r0, sl
	bl len__3Msg
	adds r1, r4, #0
	adds r1, #0x48
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
