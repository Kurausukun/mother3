	.syntax unified
sub_08047CDC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [sp, #0x20]
	ldr r4, [sp, #0x24]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	ldr r0, _08047D88
	ldr r1, _08047D8C
	adds r1, r1, r0
	mov sl, r1
	ldr r4, [r1]
	ldrb r0, [r4, #9]
	cmp r0, #0x1f
	bhi _08047D78
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r4, [r4]
	adds r4, r4, r0
	str r5, [r4]
	strh r3, [r4, #0xc]
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	adds r0, r5, #0
	bl sub_08048748
	strh r0, [r4, #0xe]
	movs r0, #0xf
	adds r1, r6, #0
	ands r1, r0
	ldrb r2, [r4, #0x10]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	movs r2, #3
	adds r1, r7, #0
	ands r1, r2
	lsls r1, r1, #4
	movs r2, #0x31
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x11]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x11]
	mov r1, sb
	strh r1, [r4, #8]
	mov r0, r8
	strh r0, [r4, #0xa]
	mov r0, sl
	ldr r1, [r0]
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
_08047D78:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047D88: .4byte gSomeBlend
_08047D8C: .4byte 0x0000BB14
	.syntax divided
