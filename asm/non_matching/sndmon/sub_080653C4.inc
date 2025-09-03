	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r1, [r5, #0x34]
	bl sub_0807066C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #0xc0
	lsls r0, r0, #8
	ldrh r1, [r5, #0x2c]
	bl sub_0807066C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #0
	mov r8, r0
	ldr r0, [r5, #0x34]
	cmp r8, r0
	blt _080653FE
	b _08065502
_080653FE:
	adds r4, r5, #0
	adds r4, #0x38
	mov sb, sp
_08065404:
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r6, r8
	muls r6, r0, r6
	adds r0, r6, #0
	subs r1, r1, r0
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	bge _0806542A
	adds r0, #0x11
	cmp r1, r0
	ble _0806543E
	b _0806543C
_0806542A:
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	cmp r0, r1
	ble _08065440
	movs r6, #8
	ldrsh r0, [r4, r6]
	subs r0, #0x11
	cmp r1, r0
	bge _0806543E
_0806543C:
	adds r1, r0, #0
_0806543E:
	strh r1, [r4, #8]
_08065440:
	ldrh r1, [r4, #8]
	ldrh r0, [r5, #0x2e]
	adds r1, r1, r0
	ldr r6, _080654DC
	ldr r2, _080654E0
	mov ip, r2
	ands r1, r2
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r0, [r1]
	adds r3, r2, r0
	subs r7, r0, r2
	ldrh r0, [r5, #0x2c]
	muls r0, r3, r0
	asrs r0, r0, #0x10
	strh r0, [r4]
	ldrh r0, [r5, #0x2c]
	muls r0, r7, r0
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08065478
	adds r0, #3
_08065478:
	asrs r0, r0, #2
	strh r0, [r4, #2]
	adds r0, r5, #0
	adds r0, #0xf8
	ldrh r0, [r0]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x10
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	adds r1, r3, #0
	bl sub_080695D4
	cmp r0, #0
	bge _080654A4
	adds r0, #0xff
_080654A4:
	asrs r1, r0, #0x18
	ldrh r0, [r4, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
	movs r6, #0
	ldrsh r1, [r4, r6]
	movs r0, #0x24
	ldrsh r3, [r5, r0]
	movs r2, #2
	ldrsh r0, [r4, r2]
	movs r6, #0x26
	ldrsh r2, [r5, r6]
	adds r1, r1, r3
	adds r0, r0, r2
	mov r2, sb
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [sp]
	str r0, [r4]
	cmp r7, #0
	ble _080654E4
	movs r6, #0x28
	ldrsh r0, [r5, r6]
	subs r0, #1
	movs r1, #0
	cmp r1, r0
	bge _080654F2
	b _080654F0
	.align 2, 0
_080654DC: .4byte gUnknown_080EF880
_080654E0: .4byte 0x000003FF
_080654E4:
	movs r1, #0x28
	ldrsh r0, [r5, r1]
	adds r0, #1
	movs r1, #7
	cmp r1, r0
	ble _080654F2
_080654F0:
	adds r1, r0, #0
_080654F2:
	str r1, [r4, #4]
	adds r4, #0xc
	movs r2, #1
	add r8, r2
	ldr r0, [r5, #0x34]
	cmp r8, r0
	bge _08065502
	b _08065404
_08065502:
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
