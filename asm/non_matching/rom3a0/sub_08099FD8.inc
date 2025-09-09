	.syntax unified
sub_08099FD8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r6, r0, #0
	movs r0, #0x78
	bl setsleep
	ldr r1, [r6, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r3, r3, r6
	mov r8, r3
	ldr r2, [r3]
	movs r0, #0xb7
	adds r1, r2, #0
	bl sub_08073198
	mov r0, r8
	ldr r2, [r0]
	movs r0, #0x84
	adds r1, r2, #0
	bl sub_08073198
	mov r1, r8
	ldr r2, [r1]
	movs r0, #0x85
	adds r1, r2, #0
	bl PlayAnimation
	bl sub_08073270
	ldr r0, _0809A418
	bl playSound
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	ldr r0, _0809A41C
	movs r1, #0xb4
	movs r2, #0xb4
	movs r3, #1
	bl sub_0807459C__FUsiii
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809A420
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x14
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	bl setsleep
	mov r3, r8
	ldr r1, [r3]
	ldr r2, [r1, #0x20]
	adds r2, #0x40
	adds r1, #0x20
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r7, sp, #0x18
	adds r0, r7, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	movs r5, #0x8a
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r4, [r0, #0x1c]
	adds r4, #0xa0
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	add r2, sp, #0x1c
	movs r1, #0x88
	lsls r1, r1, #1
	movs r3, #0
	mov sb, r3
	strh r1, [r2]
	movs r1, #0x20
	strh r1, [r2, #2]
	ldr r2, [sp, #0x1c]
	add r1, sp, #0x20
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r1]
	strh r3, [r1, #2]
	ldr r3, [sp, #0x20]
	ldr r4, [r4, #4]
	movs r1, #0x11
	bl _call_via_r4
	ldr r1, [r6, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r7, #0
	bl _call_via_r2
	movs r0, #0x11
	bl sub_08072E38
	ldr r1, _0809A424
	adds r7, r6, r1
	str r0, [r7]
	cmp r0, #0
	bne _0809A142
	b _0809A460
_0809A142:
	ldr r3, [r0, #0x20]
	adds r0, #0x20
	movs r2, #0x18
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	add r1, sp, #0x24
	movs r4, #0x30
	movs r2, #4
	strh r4, [r1]
	strh r2, [r1, #2]
	ldr r2, [r3, #0x1c]
	bl _call_via_r2
	ldr r0, [r7]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x20
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x24]
	movs r1, #6
	bl _call_via_r2
	ldr r0, _0809A428
	bl playSound
	ldr r0, [r7]
	add r1, sp, #0x28
	movs r2, #0x14
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #6
	bl sub_08073070
	ldr r0, [r7]
	add r1, sp, #0x2c
	movs r2, #0x24
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #8
	bl sub_08073070
	ldr r0, [r7]
	add r1, sp, #0x30
	movs r2, #0x34
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #0x10
	bl sub_08073070
	ldr r0, [r7]
	add r1, sp, #0x34
	movs r2, #0x44
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #0x40
	bl sub_08073070
	ldr r0, [r7]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	movs r0, #0x3c
	bl setsleep
	ldr r3, [r6, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809A42C
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x38
	mov r3, sb
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl sub_0807367C
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	ldr r0, [r7]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	ldr r0, _0809A430
	bl playSound
	ldr r0, [r7]
	add r1, sp, #0x3c
	movs r2, #0x3c
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #0x30
	bl sub_08073070
	ldr r0, [r7]
	add r1, sp, #0x40
	movs r2, #0x2c
	mov sl, r2
	strh r4, [r1]
	mov r3, sl
	strh r3, [r1, #2]
	movs r2, #0x10
	bl sub_08073070
	ldr r0, [r7]
	add r1, sp, #0x44
	movs r5, #0xc
	strh r4, [r1]
	strh r5, [r1, #2]
	movs r2, #7
	bl sub_08073070
	ldr r0, [r7]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #0
	bl _call_via_r2
	movs r0, #0x5a
	bl setsleep
	ldr r0, [r7]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #1
	bl _call_via_r2
	ldr r0, [r7]
	ldr r3, [r0, #0x20]
	adds r0, #0x20
	movs r2, #0x18
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	add r1, sp, #0x48
	movs r2, #0x90
	strh r2, [r1]
	strh r5, [r1, #2]
	ldr r2, [r3, #0x1c]
	bl _call_via_r2
	ldr r0, [r7]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x20
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x24]
	movs r1, #2
	bl _call_via_r2
	movs r0, #0xf2
	lsls r0, r0, #2
	bl playSound
	ldr r0, [r7]
	add r1, sp, #0x4c
	movs r2, #0xd0
	strh r2, [r1]
	mov r2, sl
	strh r2, [r1, #2]
	movs r2, #0xe
	bl sub_08073070
	movs r0, #0x5a
	bl setsleep
	ldr r0, _0809A434
	bl playSound
	ldr r0, [r7]
	add r1, sp, #0x50
	movs r2, #0x88
	movs r3, #0x94
	strh r2, [r1]
	strh r3, [r1, #2]
	movs r2, #0xf
	bl sub_08073070
	movs r0, #3
	bl setsleep
	ldr r0, [r7]
	add r1, sp, #0x54
	movs r2, #0x54
	movs r3, #0x20
	strh r3, [r1]
	strh r2, [r1, #2]
	movs r2, #0x14
	bl sub_08073070
	movs r0, #0x2d
	bl setsleep
	ldr r0, _0809A438
	bl playSound
	ldr r0, [r7]
	add r1, sp, #0x58
	movs r4, #0x78
	strh r4, [r1]
	strh r5, [r1, #2]
	movs r2, #0x10
	bl sub_08073070
	movs r0, #0x3c
	bl setsleep
	ldr r0, _0809A43C
	bl playSound
	ldr r0, [r7]
	add r1, sp, #0x5c
	movs r2, #0x50
	strh r4, [r1]
	strh r2, [r1, #2]
	movs r2, #0x3c
	bl sub_08073070
	movs r0, #0x3c
	bl setsleep
	movs r0, #0xf3
	lsls r0, r0, #2
	bl playSound
	mov r0, r8
	ldr r2, [r0]
	movs r0, #0x82
	adds r1, r2, #0
	bl sub_08073198
	ldr r2, [r7]
	movs r0, #0x82
	adds r1, r2, #0
	bl sub_08073198
	movs r0, #0xf
	bl setsleep
	mov r1, r8
	ldr r0, [r1]
	bl sub_08072FE0
	mov r0, sp
	movs r5, #1
	strb r5, [r0]
	add r4, sp, #4
	mov r2, sb
	strb r2, [r4]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #8
	movs r3, #1
	bl sub_08074518
	movs r0, #8
	bl setsleep
	ldr r0, [r7]
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	ldr r0, [r7]
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x20
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x24]
	movs r1, #6
	bl _call_via_r2
	movs r0, #8
	bl setsleep
	mov r0, sp
	strb r5, [r0]
	mov r0, sb
	strb r0, [r4]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #8
	movs r3, #1
	bl sub_08074494
	bl sub_08073270
	movs r0, #0x5a
	bl setsleep
	ldr r3, [r6, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r3, r3, r1
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _0809A440
	add r0, sp, #8
	ldr r3, [r3, #4]
	adds r1, r6, r1
	bl _call_via_r3
	add r1, sp, #0x60
	mov r3, sb
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	add r0, sp, #8
	movs r2, #0
	bl print__3MsgRC5Colorb
	add r0, sp, #8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x5a
	b _0809A444
	.align 2, 0
_0809A418: .4byte 0x00000615
_0809A41C: .4byte 0x00000193
_0809A420: .4byte 0x00000642
_0809A424: .4byte 0x00000F94
_0809A428: .4byte 0x000003C1
_0809A42C: .4byte 0x00000643
_0809A430: .4byte 0x000003C7
_0809A434: .4byte 0x000003C9
_0809A438: .4byte 0x000003CA
_0809A43C: .4byte 0x000003CB
_0809A440: .4byte 0x00000644
_0809A444:
	bl setsleep
	ldr r1, [r6, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #1
	b _0809A462
_0809A460:
	movs r0, #0
_0809A462:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
