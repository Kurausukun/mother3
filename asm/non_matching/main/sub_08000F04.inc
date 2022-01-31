    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r1, _08000F9C @ =0x00002C48
	adds r2, r0, r1
	ldrh r1, [r2]
	lsls r1, r1, #3
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r1, r3
	adds r0, r0, r1
	mov sl, r0
	mov r4, sl
	movs r6, #0
	cmp r6, r7
	bhs _08000F8C
	movs r0, #0x11
	rsbs r0, r0, #0
	mov sb, r0
	movs r1, #0x21
	rsbs r1, r1, #0
	mov r8, r1
	movs r3, #0xd
	rsbs r3, r3, #0
	mov ip, r3
	adds r5, r2, #0
_08000F40:
	ldrb r0, [r4, #3]
	mov r3, sb
	ands r3, r0
	mov r0, r8
	ands r3, r0
	ldrb r0, [r4, #1]
	mov r2, r8
	ands r2, r0
	mov r1, ip
	ands r2, r1
	mov r0, sb
	ands r2, r0
	ldrb r1, [r4, #5]
	mov r0, ip
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #5]
	movs r1, #4
	rsbs r1, r1, #0
	ands r2, r1
	strb r2, [r4, #1]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r3, r0
	strb r3, [r4, #3]
	movs r0, #0
	strh r0, [r4, #6]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #8
	ldrh r0, [r5]
	adds r0, #1
	ldrh r1, [r5]
	strh r0, [r5]
	cmp r6, r7
	blo _08000F40
_08000F8C:
	mov r0, sl
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08000F9C: .4byte 0x00002C48
    .syntax divided
