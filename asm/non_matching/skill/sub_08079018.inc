    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	mov r8, r0
	adds r7, r1, #0
	ldr r0, [r0, #0x1c]
	adds r5, r0, #0
	adds r5, #0xd0
	movs r1, #0
	ldrsh r4, [r5, r1]
	add r4, r8
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r3, [r5, #4]
	adds r0, r4, #0
	adds r2, r7, #0
	bl _call_via_r3
	adds r6, r0, #0
	ldr r4, [r7, #0x1c]
	movs r0, #0xf8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r7, r5
	mov r2, r8
	ldr r1, [r2, #0x1c]
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	movs r1, #0
	cmp r1, r0
	bge _08079082
	adds r1, r0, #0
_08079082:
	muls r6, r1, r6
	adds r0, r6, #0
	movs r1, #0x64
	bl sub_0807066C
	adds r6, r0, #0
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #1
	asrs r0, r0, #4
	lsls r1, r6, #4
	adds r1, r1, r6
	asrs r1, r1, #4
	bl randS32
	adds r6, r0, #0
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bne _080790CE
	lsrs r0, r6, #0x1f
	adds r0, r6, r0
	asrs r0, r0, #1
	movs r1, #1
	cmp r5, r0
	bge _080790CC
	adds r1, r0, #0
_080790CC:
	adds r6, r6, r1
_080790CE:
	ldr r1, [r7, #0x1c]
	movs r4, #0xa8
	lsls r4, r4, #2
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x10
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080790F2
	lsrs r0, r6, #0x1f
	adds r0, r6, r0
	asrs r6, r0, #1
_080790F2:
	ldr r1, [r7, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08079178
	ldr r1, [r7, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807917E
	ldr r1, [r7, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x33
	adds r1, r7, #0
	adds r2, r7, #0
	bl playSeq
_08079178:
	lsrs r0, r6, #0x1f
	adds r0, r6, r0
	asrs r6, r0, #1
_0807917E:
	cmp r5, #1
	bne _0807918E
	mov r2, r8
	ldr r1, [r2, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	b _08079198
_0807918E:
	mov r0, r8
	ldr r1, [r0, #0x1c]
	movs r2, #0xa2
	lsls r2, r2, #2
	adds r1, r1, r2
_08079198:
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0807335C
	movs r1, #1
	cmp r1, r6
	bge _080791B4
	adds r1, r6, #0
_080791B4:
	adds r0, r7, #0
	movs r2, #1
	bl hitPlayer
	mov r0, r8
	ldr r1, [r0, #0x1c]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r3, [r1, #4]
	adds r1, r7, #0
	adds r2, r5, #0
	bl _call_via_r3
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080792AE
	ldr r1, [r7, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x10
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x36
	adds r1, r7, #0
	adds r2, r7, #0
	bl playSeq
	mov r2, r8
	ldr r1, [r2, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #1
	cmp r1, r6
	bge _08079264
	adds r1, r6, #0
_08079264:
	movs r2, #1
	bl hitPlayer
	mov r0, r8
	ldr r1, [r0, #0x1c]
	movs r2, #0x96
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl playSeq
	adds r0, r7, #0
	movs r1, #0x17
	movs r2, #1
	bl sub_08073EE8
	b _080792D6
_080792AE:
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080792D6
	adds r0, r7, #0
	movs r1, #0x16
	movs r2, #1
	bl sub_08073EE8
_080792D6:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
