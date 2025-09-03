	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	add r1, sp, #0xc
	mov sl, r1
	movs r2, #0x9c
	lsls r2, r2, #3
	mov sb, r2
_08068490:
	ldr r3, _08068518
	adds r0, r6, r3
	ldrb r1, [r0]
	adds r0, r6, #0
	mov r2, r8
	bl sub_08068718
	adds r7, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r7, r0
	bge _0806851C
	movs r0, #0x5c
	mov r5, r8
	muls r5, r0, r5
	adds r4, r5, r6
	add r4, sb
	ldr r1, [r4, #0x1c]
	adds r1, #0x78
	add r5, sb
	adds r5, r6, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	ldr r4, [r4, #0x1c]
	adds r4, #0x80
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	adds r2, #0xf0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	b _0806853E
	.align 2, 0
_08068518: .4byte 0x0000043E
_0806851C:
	movs r0, #0x5c
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r0, r6
	add r1, sb
	ldr r2, [r1, #0x1c]
	adds r2, #0x78
	add r0, sb
	adds r0, r6, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
_0806853E:
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #7
	ble _08068490
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r4, r6, r2
	mov r0, sp
	bl __3Msg
	adds r0, r4, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806E948
	ldr r3, _080685E0
	adds r4, r6, r3
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806DB38
	ldr r0, _080685E4
	adds r5, r6, r0
	ldrb r1, [r5]
	movs r2, #0x78
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x1c
	add r1, sp, #0xc
	strh r2, [r1]
	mov r1, sl
	strh r0, [r1, #2]
	adds r0, r4, #0
	bl sub_0806DB74
	ldr r1, [r6, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r3, r0, #0
	cmp r3, #0
	bne _080685E8
	movs r0, #0x8b
	lsls r0, r0, #4
	adds r4, r6, r0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806DEC4
	adds r0, r4, #0
	bl sub_08087260
	ldrb r2, [r5]
	add r1, sp, #0x10
	movs r3, #0xc8
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0x1c
	strh r3, [r1]
	strh r0, [r1, #2]
	adds r0, r4, #0
	bl sub_0806DF48
	b _08068632
	.align 2, 0
_080685E0: .4byte 0x0000081C
_080685E4: .4byte 0x0000043F
_080685E8:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
	ldr r3, _08068668
	adds r1, r6, r3
	ldrb r1, [r1]
	subs r4, r0, r1
	movs r0, #0x8b
	lsls r0, r0, #4
	adds r5, r6, r0
	movs r1, #0
	cmp r4, #7
	bhi _08068610
	movs r1, #1
_08068610:
	adds r0, r5, #0
	bl sub_0806DEC4
	adds r0, r5, #0
	bl sub_08087294
	add r1, sp, #0x14
	movs r2, #0xc8
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x1c
	strh r2, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	bl sub_0806DF48
_08068632:
	ldr r1, _0806866C
	adds r4, r6, r1
	adds r0, r6, #0
	bl sub_0806871C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806DB38
	ldr r2, _08068670
	adds r4, r6, r2
	adds r0, r6, #0
	bl sub_08068734
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806DB38
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068668: .4byte 0x0000043E
_0806866C: .4byte 0x00000958
_08068670: .4byte 0x000009F4
	.syntax divided
