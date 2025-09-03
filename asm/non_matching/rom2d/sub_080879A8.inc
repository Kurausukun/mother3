	.syntax unified
sub_080879A8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r2, #0
	ldr r0, [r0, #0x24]
	cmp r2, r0
	bge _08087A38
_080879BC:
	mov r1, sl
	ldr r0, [r1, #0x24]
	subs r0, #1
	lsls r5, r0, #0x10
	lsls r0, r2, #0x10
	mov r8, r0
	cmp r5, r8
	ble _08087A26
	movs r3, #0x24
	add r3, sl
	mov sb, r3
_080879D2:
	asrs r5, r5, #0x10
	lsls r7, r5, #2
	adds r0, r7, #4
	add r0, sb
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0xc0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, r0, #0
	subs r6, r5, #1
	lsls r5, r6, #2
	adds r0, r5, #4
	add r0, sb
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0xc0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	cmp r4, r0
	bhs _08087A20
	mov r0, sl
	adds r0, #0x28
	adds r2, r0, r7
	ldr r3, [r2]
	adds r0, r0, r5
	ldr r1, [r0]
	str r1, [r2]
	str r3, [r0]
_08087A20:
	lsls r5, r6, #0x10
	cmp r5, r8
	bgt _080879D2
_08087A26:
	movs r1, #0x80
	lsls r1, r1, #9
	add r1, r8
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	mov r3, sl
	ldr r0, [r3, #0x24]
	cmp r1, r0
	blt _080879BC
_08087A38:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
