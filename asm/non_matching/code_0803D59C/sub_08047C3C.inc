	.syntax unified
sub_08047C3C:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08047CD0
	ldr r1, _08047CD4
	adds r1, r1, r0
	mov sb, r1
	ldr r2, [r1]
	ldrb r0, [r2, #0x12]
	cmp r0, #0x1f
	bhi _08047CC4
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, [r2, #4]
	adds r3, r3, r0
	str r7, [r3, #4]
	movs r0, #0xf
	adds r1, r5, #0
	ands r1, r0
	ldrb r2, [r3, #8]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	movs r2, #3
	adds r1, r6, #0
	ands r1, r2
	lsls r1, r1, #4
	movs r2, #0x31
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
	movs r1, #0xf
	ands r1, r4
	lsls r1, r1, #6
	ldrh r2, [r3, #8]
	ldr r0, _08047CD8
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #8]
	mov r0, r8
	strh r0, [r3]
	mov r1, ip
	strh r1, [r3, #2]
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1, #0x12]
	adds r0, #1
	strb r0, [r1, #0x12]
_08047CC4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047CD0: .4byte gSomeBlend
_08047CD4: .4byte 0x0000BAF8
_08047CD8: .4byte 0xFFFFFC3F
	.syntax divided
