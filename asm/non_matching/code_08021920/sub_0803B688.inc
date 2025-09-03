	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r1, _0803B718
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0803B708
	ldrb r1, [r1, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803B708
	lsls r1, r2, #5
	ldr r0, _0803B71C
	adds r4, r1, r0
	movs r5, #0
	lsls r6, r3, #4
	cmp r5, r6
	bge _0803B708
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sl, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sb, r0
	ldr r7, _0803B720
	movs r0, #0x40
	adds r0, r0, r7
	mov r8, r0
	movs r0, #0x80
	adds r0, r0, r7
	mov ip, r0
_0803B6D6:
	ldrh r3, [r4]
	movs r1, #0x1f
	ands r1, r3
	mov r0, sl
	ands r0, r3
	mov r2, sb
	ands r2, r3
	lsls r1, r1, #1
	adds r1, r1, r7
	lsrs r0, r0, #4
	add r0, r8
	ldrh r1, [r1]
	ldrh r0, [r0]
	orrs r1, r0
	lsrs r2, r2, #9
	add r2, ip
	ldrh r0, [r2]
	orrs r1, r0
	strh r1, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #2
	cmp r5, r6
	blt _0803B6D6
_0803B708:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B718: .4byte gGame
_0803B71C: .4byte gUnknown_03005314
_0803B720: .4byte gUnknown_0202AE78
	.syntax divided
