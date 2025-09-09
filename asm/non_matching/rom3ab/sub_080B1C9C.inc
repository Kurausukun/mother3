	.syntax unified
sub_080B1C9C:
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x30
	mov r8, r0
	bl onSuccess__6ActionP4Unit
	add r5, sp, #0x20
	movs r0, #0
	mov sl, r0
	movs r0, #0
	strh r0, [r5]
	strh r0, [r5, #2]
	bl sub_08072DFC__Fv
	adds r4, r0, #0
	adds r4, #1
	bl sub_08072DFC__Fv
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08063960
	add r0, sp, #0x24
	mov r1, sp
	bl sub_080639FC
	ldr r0, [sp, #0x24]
	strh r0, [r5]
	mov r0, sp
	movs r1, #2
	bl _._15struct_08063998
	ldr r0, _080B1DA4
	strh r0, [r5, #2]
	mov r2, r8
	ldr r1, [r2, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r2, sp, #0x28
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2]
	strh r1, [r2, #2]
	adds r1, r5, #0
	movs r3, #0x1e
	bl sub_08072F9C
	adds r5, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #2
	bl playSound
	mov r0, r8
	ldr r4, [r0, #0x1c]
	movs r1, #0xac
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r0, [r4, r2]
	add r8, r0
	movs r3, #0xe9
	lsls r3, r3, #2
	mov sb, r3
	ldr r2, [r5, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r6, sp, #0x14
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	add r5, sp, #8
	adds r0, r5, #0
	ldr r4, [r4, #4]
	mov r1, r8
	mov r2, sb
	adds r3, r6, #0
	bl _call_via_r4
	add r1, sp, #0x2c
	mov r0, sl
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r0, r5, #0
	movs r2, #1
	bl print__3MsgRC5Colorb
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B1DA4: .4byte 0x0000FFE0
	.syntax divided
