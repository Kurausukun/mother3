	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r6, r1, #0
	mov r8, r2
	str r3, [sp, #8]
	adds r0, #0xa4
	movs r1, #0
	ldrsh r4, [r0, r1]
	asrs r4, r4, #8
	bl sub_0806B070
	adds r1, r0, #0
	mov r0, sp
	bl sub_0806BAEC
	ldr r5, [sp]
	adds r5, r5, r4
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r0, sl
	adds r0, #0xa6
	movs r1, #0
	ldrsh r4, [r0, r1]
	asrs r4, r4, #8
	bl sub_0806B070
	adds r1, r0, #0
	add r0, sp, #4
	bl sub_0806BAEC
	ldr r2, [sp, #4]
	asrs r2, r2, #0x10
	adds r2, r2, r4
	mov r1, sl
	ldr r0, [r1, #0x30]
	adds r1, r0, #0
	adds r1, #0x80
	ldrb r1, [r1]
	mov sb, r1
	adds r0, #0x82
	ldrb r0, [r0]
	mov ip, r0
	mov r0, sl
	adds r0, #0xa0
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r0, r0, #8
	adds r0, r0, r6
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r0, sl
	adds r0, #0xa2
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r0, r0, #8
	adds r0, r0, r6
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r1, sb
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r1, ip
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x18
	mov ip, r0
	movs r0, #1
	add r8, r0
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	str r5, [sp, #0xc]
	movs r5, #0xab
	lsls r5, r5, #2
	add r5, sl
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	lsls r0, r6, #3
	ldr r1, [sp, #8]
	adds r3, r0, r1
	b _0806F510
_0806F4E2:
	lsls r1, r7, #1
	mov r0, sl
	adds r0, #0xac
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, [sp, #0xc]
	subs r0, r0, r1
	strh r0, [r3]
	lsls r0, r4, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	subs r0, r0, r2
	strh r0, [r3, #2]
	mov r1, sb
	adds r0, r7, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r1, ip
	adds r0, r4, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r3, #0x10
	adds r6, #2
_0806F510:
	movs r0, #0xa0
	cmp r0, r8
	ble _0806F518
	mov r0, r8
_0806F518:
	cmp r6, r0
	blt _0806F4E2
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
