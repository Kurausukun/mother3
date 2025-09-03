	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov r8, r1
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r3, r0, #0
	ldr r0, _0806F7C4
	mov sl, r0
	ldr r4, _0806F7C8
	str r3, [r4]
	str r0, [r4, #4]
	ldr r0, _0806F7CC
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r1, r8
	lsls r7, r1, #1
	adds r0, r7, r3
	ldr r2, _0806F7D0
	mov ip, r2
	lsls r2, r5, #1
	cmp r2, #0
	ble _0806F748
	str r0, [r4]
	mov r0, ip
	str r0, [r4, #4]
	asrs r0, r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0806F748:
	subs r6, r6, r5
	mov r1, r8
	adds r0, r1, r5
	lsls r0, r0, #1
	adds r3, r0, r3
	mov r0, sl
	adds r1, r7, r0
	lsls r0, r6, #1
	cmp r0, #0
	ble _0806F76C
	str r3, [r4]
	str r1, [r4, #4]
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0806F76C:
	mov r1, r8
	adds r0, r1, r6
	lsls r0, r0, #1
	add r0, sl
	cmp r2, #0
	ble _0806F78A
	mov r3, ip
	str r3, [r4]
	str r0, [r4, #4]
	asrs r0, r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0806F78A:
	mov r0, sb
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r4, [r1, #4]
	movs r1, #0
	movs r2, #2
	mov r3, sl
	bl _call_via_r4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F7C4: .4byte gUnknown_02001EC0
_0806F7C8: .4byte 0x040000D4
_0806F7CC: .4byte 0x80000020
_0806F7D0: .4byte gUnknown_02001E80
	.syntax divided
