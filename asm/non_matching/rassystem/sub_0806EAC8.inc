	.syntax unified
sub_0806EAC8:
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	str r0, [sp]
	movs r7, #0
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r7, r0
	bge _0806EB18
	adds r6, r4, #0
	adds r6, #0x20
	mov r5, sp
_0806EAE4:
	adds r0, r4, #0
	adds r0, #0x4c
	adds r1, r6, #0
	mov r2, sp
	bl sub_08088F00__1VG7SettingPs
	add r0, sp, #4
	adds r1, r6, #0
	bl __7SettingRC7Setting
	ldr r1, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	adds r7, #1
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r7, r0
	blt _0806EAE4
_0806EB18:
	ldr r0, [r4, #0x38]
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x48
	movs r0, #0
	strb r0, [r1]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
