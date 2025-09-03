	.syntax unified
sub_080172D4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r3, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov r8, r0
	movs r1, #0x1f
	mov ip, r1
	ldr r0, _08017314
	mov sl, r0
	movs r1, #0x7d
	rsbs r1, r1, #0
	mov sb, r1
_080172F8:
	ldr r0, [r3]
	lsls r4, r0, #0x1b
	ldr r0, [r7]
	lsls r2, r0, #0x1b
	adds r6, r0, #0
	cmp r4, r2
	bhs _0801732C
	lsrs r0, r4, #0x1b
	adds r0, r0, r5
	lsrs r1, r2, #0x1b
	cmp r0, r1
	ble _08017318
	adds r0, r1, #0
	b _0801731C
	.align 2, 0
_08017314: .4byte 0xFFFFFC1F
_08017318:
	lsrs r0, r4, #0x1b
	adds r0, r5, r0
_0801731C:
	mov r1, ip
	ands r0, r1
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0801732C:
	ldr r0, [r3]
	lsls r4, r0, #0x16
	lsls r2, r6, #0x16
	lsrs r1, r4, #0x1b
	lsrs r0, r2, #0x1b
	cmp r1, r0
	bhs _08017368
	adds r0, r1, #0
	adds r0, r0, r5
	lsrs r1, r2, #0x1b
	cmp r0, r1
	ble _08017354
	adds r0, r1, #0
	lsls r0, r0, #5
	ldrh r2, [r3]
	mov r1, sl
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	b _08017368
_08017354:
	lsrs r1, r4, #0x1b
	adds r1, r5, r1
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
_08017368:
	ldr r0, [r3]
	lsls r4, r0, #0x11
	lsls r2, r6, #0x11
	lsrs r1, r4, #0x1b
	lsrs r0, r2, #0x1b
	cmp r1, r0
	bhs _08017398
	adds r0, r1, #0
	adds r0, r0, r5
	lsrs r1, r2, #0x1b
	cmp r0, r1
	ble _08017384
	adds r0, r1, #0
	b _08017388
_08017384:
	lsrs r0, r4, #0x1b
	adds r0, r5, r0
_08017388:
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_08017398:
	adds r3, #2
	adds r7, #2
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xf
	bls _080172F8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
