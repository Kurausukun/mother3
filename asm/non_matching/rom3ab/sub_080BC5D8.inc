	.syntax unified
sub_080BC5D8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #0x10]
	adds r5, r1, #0
	movs r0, #0
	mov r8, r0
	add r1, sp, #0xc
	mov sb, r1
	ldr r2, _080BC5FC
	mov sl, r2
_080BC5F4:
	lsls r6, r0, #1
	adds r7, r0, #1
	b _080BC60E
	.align 2, 0
_080BC5FC: .4byte gUnknown_080FA348
_080BC600:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl tellStatusWoreOff
	movs r3, #1
	add r8, r3
_080BC60E:
	ldr r2, [r5, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	mov r3, sl
	adds r1, r6, r3
	ldrh r4, [r1]
	ldr r2, [r2, #4]
	adds r1, r4, #0
	bl _call_via_r2
	cmp r0, #0
	bgt _080BC600
	adds r0, r7, #0
	cmp r0, #7
	bls _080BC5F4
	ldr r1, [sp, #0x10]
	ldr r0, [r1, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r3, r0, r2
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r2, [sp, #0x10]
	adds r1, r2, r0
	ldr r2, _080BC684
	mov r0, r8
	cmp r0, #0
	ble _080BC650
	adds r2, #1
_080BC650:
	mov r0, sp
	ldr r3, [r3, #4]
	bl _call_via_r3
	movs r0, #0
	add r1, sp, #0xc
	strb r0, [r1]
	mov r1, sb
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BC684: .4byte 0x00000139
	.syntax divided
