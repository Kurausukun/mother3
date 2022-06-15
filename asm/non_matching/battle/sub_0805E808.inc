    .syntax unified
	push {r4, r5, r6, lr}
	sub sp, #0xd0
	mov r0, sp
	bl sub_0806DC78
	ldr r1, _0805E894 @ =0x00000293
	add r5, sp, #0xa4
	adds r0, r5, #0
	bl sub_080706A0
	add r6, sp, #0xb0
	adds r0, r6, #0
	movs r1, #4
	bl sub_080706A0
	ldr r1, _0805E898 @ =0x00000285
	add r4, sp, #0xbc
	adds r0, r4, #0
	bl sub_080706A0
	mov r0, sp
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806DDA0
	ldr r0, _0805E89C @ =_vt.1D
	str r0, [r4, #8]
	str r0, [r6, #8]
	str r0, [r5, #8]
	mov r0, sp
	movs r1, #2
	bl sub_0806DEEC
	add r1, sp, #0xc8
	movs r0, #0x78
	movs r2, #0x14
	movs r4, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, sp
	bl sub_0806DF48
	adds r0, r5, #0
	bl __3Msg
	ldr r1, _0805E8A0 @ =0x0000FF33
	adds r0, r5, #0
	bl sub_0806E34C
	add r1, sp, #0xcc
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	adds r0, r5, #0
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	mov r0, sp
	movs r1, #2
	bl sub_0806DD48
	add sp, #0xd0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E894: .4byte 0x00000293
_0805E898: .4byte 0x00000285
_0805E89C: .4byte _vt.1D
_0805E8A0: .4byte 0x0000FF33
    .syntax divided
