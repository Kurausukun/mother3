	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	adds r3, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov sb, r0
	movs r1, #0x1f
	mov sl, r1
	mov r0, sl
	subs r0, r0, r2
	mov ip, r0
	mov r6, ip
	ands r6, r1
	lsls r0, r6, #5
	str r0, [sp]
	lsls r1, r6, #2
	str r1, [sp, #4]
_080174B8:
	ldr r1, [r3]
	lsls r1, r1, #0x1b
	ldr r0, [r7]
	lsls r2, r0, #0x1b
	adds r5, r0, #0
	cmp r1, r2
	bls _080174EC
	lsrs r0, r2, #0x1b
	cmp ip, r0
	ble _080174DA
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r3]
	b _080174EC
_080174DA:
	lsrs r0, r2, #0x1b
	mov r1, sl
	ands r0, r1
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_080174EC:
	ldr r1, [r3]
	lsls r1, r1, #0x16
	lsls r2, r5, #0x16
	lsrs r1, r1, #0x1b
	lsrs r0, r2, #0x1b
	cmp r1, r0
	bls _08017526
	movs r4, #0x1f
	mov r0, r8
	subs r1, r4, r0
	lsrs r0, r2, #0x1b
	cmp r1, r0
	ble _08017514
	ldrh r1, [r3]
	ldr r0, _08017510
	ands r0, r1
	ldr r1, [sp]
	b _08017522
	.align 2, 0
_08017510: .4byte 0xFFFFFC1F
_08017514:
	lsrs r0, r2, #0x1b
	adds r1, r4, #0
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	ldr r0, _08017548
	ands r0, r2
_08017522:
	orrs r0, r1
	strh r0, [r3]
_08017526:
	ldr r1, [r3]
	lsls r1, r1, #0x11
	lsls r2, r5, #0x11
	lsrs r1, r1, #0x1b
	lsrs r0, r2, #0x1b
	cmp r1, r0
	bls _08017560
	cmp ip, r0
	ble _0801754C
	ldrb r1, [r3, #1]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #4]
	orrs r0, r1
	strb r0, [r3, #1]
	b _08017560
	.align 2, 0
_08017548: .4byte 0xFFFFFC1F
_0801754C:
	lsrs r0, r2, #0x1b
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_08017560:
	adds r3, #2
	adds r7, #2
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #0xf
	bls _080174B8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
